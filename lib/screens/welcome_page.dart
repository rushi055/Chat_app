import 'package:chat_app/screens/login_page.dart';
import 'package:chat_app/screens/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/welcome.jpg'), // Replace with your image path
        //     fit: BoxFit.none,
        //
        //   ),
        // ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/logo1.png'),
                    height: 80.0,
                    width: 80,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Let's Chat Together ",
                        speed:  Duration(milliseconds: 500),
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Agne',
                        ),
                      ),

                    ],
                   // Pause duration between each text animation
                  )
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      padding: EdgeInsets.all(10)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text('Log In', style: TextStyle(fontSize: 15)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        elevation: 5,
                        padding: EdgeInsets.all(10)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()),
                      );
                    },
                    child: Text('Register', style: TextStyle(fontSize: 15))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
