import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_login/firebase_options.dart';
import 'package:flutter_social_login/presentation/login_screen.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //it is used to initialize the binding of the widgets
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); //it is used to initialize the firebase app
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
