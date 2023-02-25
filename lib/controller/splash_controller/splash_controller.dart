// import 'dart:developer';

// import 'package:authentication/view/sign_in/sign_in.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class SplashController with ChangeNotifier {
//   FlutterSecureStorage storage = const FlutterSecureStorage();
//   String? onboardValue;
//   String? signInValue;

//   void splash(context) async {
//     await Future.delayed(
//       const Duration(seconds: 3),
//     );

//     onboardValue = await storage.read(key: 'onboard');
//     signInValue = await storage.read(key: 'token');
//     log(signInValue.toString());
//     if (signInValue != null) {
//       log('message');
//       Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(
//             builder: (context) => SignIn(),
//           ),
//           (route) => false);
//     } else if (onboardValue != null) {
//       Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(
//             builder: (context) => SignIn(),
//           ),
//           (route) => false);
//     }
//   }
// }
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
