import 'package:chat_app/screens/registration_page.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 400.0,
                // width: 500,
                child: Image.asset('assets/login.png'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    gapPadding: 4,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 10.0,
                    ),
                  ),
                  labelText: 'Enter your Username',
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 4,
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        width: 10.0,
                      ),
                    ),
                    labelText: 'Enter your Password',
                    //contentPadding: EdgeInsets.symmetric(10)
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () async {
                      try {
                        final newUser = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (newUser != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()),
                          );
                        }
                      } catch (e) {
                        //   showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return AlertDialog(
                        //         title: Text('User is not Registered'),
                        //         content: Text('Please Sign In'),
                        //         actions: [
                        //           TextButton(
                        //             onPressed: () {
                        //               Navigator.of(context).pop(); // Close the dialog
                        //             },
                        //             child: Text('OK'),
                        //           ),
                        //         ],
                        //       );
                        //     },
                        //   );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.white,
                            content: Text(
                              'User is not Registered , Please Sign In',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      }
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen()),
                    );
                  },
                  child: Text('Sign IN'))
            ],
          ),
        ),
      ),
    );
  }
}
