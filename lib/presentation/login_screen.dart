import 'package:flutter/material.dart';
import 'package:flutter_social_login/auth/auth.dart';
import 'package:flutter_social_login/presentation/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Auth().signInWithGoogle().then((userCredential) {
              //take user to home screenNavigator.of(context).pushReplacement(
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
              // Handle successful sign-in
            }).catchError((error) {
              // Handle sign-in error
            });
          },
          child: const Text('Sign in with Google'),
        ),
      ),
    );
  }
}
