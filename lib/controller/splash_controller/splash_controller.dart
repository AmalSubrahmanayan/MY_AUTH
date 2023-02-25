import 'package:authentication/view/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

class SplashController with ChangeNotifier {
  void splash(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
  
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SignIn(),
      ),
    );
  }
}
