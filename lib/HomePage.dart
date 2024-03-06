import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar
      (
      SnackBar(content: Text(message))
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        title: Text("Animated Text "),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText('Hello World',
                        textStyle: TextStyle(fontSize: 20),
                      speed: Duration(milliseconds: 1000),
                        colors: [
                          Colors.purple,
                          Colors.blue,
                          Colors.yellow,
                          Colors.red,
                        ]
                    ),
                  ],
                //repeatForever: true,
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
                onFinished: (){
                  MySnackBar("This is Finished",context);
                },
              ),
            ],
          ),
        ),

      ),

    );
  }
}
