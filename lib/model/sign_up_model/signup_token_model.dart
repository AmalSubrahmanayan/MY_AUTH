class SignUpTokenModel {
  final String accessToken;

  SignUpTokenModel({
    required this.accessToken,
  });

  factory SignUpTokenModel.fromJson(Map<String, dynamic> json) {
    return SignUpTokenModel(
      accessToken: json['accessToken'],
    );
  }
}
