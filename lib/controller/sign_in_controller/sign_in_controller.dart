import 'dart:developer';

import 'package:authentication/model/sign_in_model/sign_in_model.dart';
import 'package:authentication/service/sign_in_service/sign_in_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SignInProvider with ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isNotVisible = true;
  bool loading = false;
  bool hiddenPassword = true;
  FlutterSecureStorage storage = const FlutterSecureStorage();

  String? emailValidation(String? value) {
    log('Email validation');
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter correct email';
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

  void login(context, FormState currentState) async {
    if (currentState.validate()) {
      loading = true;
      notifyListeners();
      final SignInModel model = SignInModel(
        email: emailController.text,
        password: passwordController.text,
      );

      await SignInService().loginservice(model).then((value) async {
        if (value != null) {
          await storage.write(key: 'token', value: value.accessToken);
          // await storage.write(key: 'refreshToken', value: value.refreshToken);

          clearControllers();
          loading = false;
          notifyListeners();
          // log(value.toString());
        } else {
          log(value.toString());

          loading = false;
          notifyListeners();
        }
      });
    }
  }

  void clearControllers() {
    emailController.clear();
    passwordController.clear();
  }
}
