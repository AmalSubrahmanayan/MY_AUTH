// import 'dart:convert';
// import 'dart:developer';

// import 'package:authentication/constants/api_url/api_endpoints.dart';
// import 'package:authentication/constants/api_url/api_queryparameters.dart';
// import 'package:authentication/constants/api_url/api_url.dart';
// import 'package:authentication/model/sign_in_model/sign_in_model.dart';
// import 'package:authentication/model/signin_token_model/signin_token_model.dart';
// import 'package:authentication/utils/dio/app_exceptions.dart';
// import 'package:dio/dio.dart';

// class SignInService {
//   final dio = Dio();

//   Future<SigninTokenModel?> loginservice(SignInModel model) async {
//     try {
//       // log('entered login fn');
//       Response response = await dio.post(ApiUrl.apiUrl + ApiEndPoints.login,
//           queryParameters: ApiQueryParameter.queryParameter,
//           // data: model.toJson(),
//           data: jsonEncode(model.toJson()));
//       // print(response.statusCode.toString());

//       // log(response.statusCode.toString());
//       if (response.statusCode == 200) {
//         // log('try');
//         final SigninTokenModel model =
//             SigninTokenModel.fromJson(response.data!);
//         log(response.data.toString());
//         return model;
//       }
//     } catch (e) {
//       AppExceptions.errorHandler(e);
//     }
//     // log("message");
//     return null;
//   }

// }

import 'dart:convert';
import 'dart:developer';

import 'package:authentication/constants/api_url/api_endpoints.dart';
import 'package:authentication/constants/api_url/api_url.dart';
import 'package:authentication/model/sign_in_model/sign_in_model.dart';
import 'package:authentication/model/signin_token_model/signin_token_model.dart';
import 'package:authentication/utils/dio/app_exceptions.dart';
import 'package:dio/dio.dart';

class SignInService {
  final dio = Dio();

  Future<SigninTokenModel?> loginservice(SignInModel model) async {
    try {
      Response response = await dio.post(
        ApiUrl.apiUrl + ApiEndPoints.signInUrl,
        data: jsonEncode(model.toJson()),
      );
      if (response.statusCode == 200) {
        final SigninTokenModel model =
            SigninTokenModel.fromJson(response.data!);
        log(response.data.toString());
        return model;
      }
    } catch (e) {
      AppExceptions.errorHandler(e);
    }
    return null;
  }
}
