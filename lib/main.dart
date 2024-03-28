import 'package:flutter/material.dart';
import 'package:searchimagine/api/rest.dart';
import 'package:searchimagine/screens/splashScreen.dart';
import 'package:searchimagine/theme_mode.dart';

// platform.stability

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>  MaterialApp(
    theme:Modetheme.lightMode,
    title: 'pooo',
    
        home: Splash(),
        
        debugShowCheckedModeBanner: false,
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("write the scenario for the ur imagine mind"),
                TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'Enter what u imagein',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.all(16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelStyle: const TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF9DB2BF),
                    ),
                    onPressed: () {
                      convertTextToImage(textController.text, context);
                      isLoading = true;

                      setState(() {});
                    },
                    child: isLoading
                        ? const SizedBox(
                            height: 15,
                            width: 15,
                            child:
                                CircularProgressIndicator(color: Colors.black))
                        : const Text('Generate Image',
                            style: TextStyle(color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      );
}
  
  
