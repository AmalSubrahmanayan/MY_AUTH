import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  signUp() {
    clearControllers();
  }

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool hiddenPassword = true;
  bool loading = false;

  String? usernameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "please choose a username to use";
    } else if (value.length < 3) {
      return "To shot username. choose a username  with 4 or more characters";
    } else {
      return null;
    }
  }

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter correct email';
    } else {
      return null;
    }
  }

  String? mobilenumberValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your mobile number";
    } else if (value.length < 10) {
      return "Number must be 10 digits";
    } else {
      return null;
    }
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "please enter your passwoed";
    } else if (value.length < 6) {
      return "To short password";
    } else {
      return null;
    }
  }

  String? confirmPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please reenter your password";
    } else if (value != passwordController.text) {
      return "Password do not match";
    } else {
      return null;
    }
  }

  void clearControllers() {
    usernameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  void togglePasswwordView() {
    hiddenPassword = !hiddenPassword;
    notifyListeners();
  }
}
