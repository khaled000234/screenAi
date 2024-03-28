import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';


class SecondScreen2 extends StatelessWidget {
  final Uint8List image;

  SecondScreen2({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.memory(image),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                await ImageGallerySaver.saveImage(image); // Save image to gallery
              //  .shareFiles(['path/to/image.png']); // Share saved image
              },
              child: Text('Image'),
            ),
             ElevatedButton(
              onPressed: () async {
                 // Save image to gallery
           //    await Share.shareFiles(['path/to/image.png']); // Share saved image
              },
              child: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}