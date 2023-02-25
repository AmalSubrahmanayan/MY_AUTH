class SigninTokenModel {
 
  final String accessToken;
  SigninTokenModel({
    required this.accessToken,

  });

  factory SigninTokenModel.fromJson(Map<String, dynamic> json) {
    return SigninTokenModel(
      
      accessToken: json['accessToken'],
    );
  }
}

