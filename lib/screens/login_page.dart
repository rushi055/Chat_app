import 'package:flutter/material.dart';
import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            children:[
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
                      width: 4.0,
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
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                      );
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
