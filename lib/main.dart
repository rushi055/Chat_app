import 'package:chat_app/screens/login_page.dart';
import 'package:chat_app/screens/registration_page.dart';
import 'package:chat_app/screens/welcome_page.dart';
import 'package:chat_app/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'utils/theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}
//void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.welcomeRoute,
      routes: {
        "/": (context) => LoginScreen(),
        MyRoutes.welcomeRoute : (context) => WelcomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.chatRoute: (context) => ChatScreen(),
        MyRoutes.registerRoute: (context) => RegistrationScreen()
      },
    );
  }
}
