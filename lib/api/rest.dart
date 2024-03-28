import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:searchimagine/screens/sg.dart';
import 'package:searchimagine/utils/dialog.dart';

Future<dynamic> convertTextToImage(
  String prompt,
  BuildContext context,
) async {
  Uint8List imageData = Uint8List(0);

  const baseUrl = 'https://api.stability.ai';
    final url = Uri.parse(
      '$baseUrl/v1alpha/generation/stable-diffusion-512-v2-1/text-to-image');

 
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      'Authorization':
       
          'sk-A0EtDFqYiR8oI2mhFaMcMVf6hAjP4OSmAXiSz43pYhytKI0a',
      'Accept': 'image/png',
    },
    body: jsonEncode({
      'cfg_scale': 15,
      'clip_guidance_preset': 'FAST_BLUE',
      'height': 512,
      'width': 512,
      'samples': 1,
      'steps': 150,
      'seed': 0,
      'style_preset': "3d-model",
      'text_prompts': [
        {
          'text': prompt,
          'weight': 1,
        }
      ],
    }),
  );

  if (response.statusCode == 200) {
    try {
     imageData = response.bodyBytes;
       await ImageGallerySaver.saveImage(imageData); 
       // Save image to gallery
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondScreen2(image: imageData),
          ));
      return response.bodyBytes;
    } on Exception {
      return showErrorDialog('Failed to generate image', context);
    }
  } else {
    return showErrorDialog('Failed to generate image', context);
  }


  
}

