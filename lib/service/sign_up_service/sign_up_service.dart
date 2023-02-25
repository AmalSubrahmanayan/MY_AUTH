import 'dart:convert';
import 'dart:developer';
import 'package:authentication/constants/api_url/api_endpoints.dart';
import 'package:authentication/constants/api_url/api_url.dart';
import 'package:authentication/model/sign_up_model/sign_up_model.dart';
import 'package:authentication/model/sign_up_model/signup_token_model.dart';
import 'package:authentication/utils/dio/app_exceptions.dart';
import 'package:dio/dio.dart';

class SignUpService {
  final dio = Dio();
  Future<SignUpTokenModel?> signUp(SignupModel model, context) async {
    try {
      Response response = await dio.post(ApiUrl.apiUrl + ApiEndPoints.signupUrl,
          data: jsonEncode(model.toJson()),
          queryParameters: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
          });
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        log('saved to database');
        final SignUpTokenModel model =
            SignUpTokenModel.fromJson(response.data!);
        return model;
      }
    } catch (e) {
      AppExceptions.errorHandler(e);
    }
    return null;
  }
}
