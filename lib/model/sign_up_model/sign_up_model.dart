class SignupModel {
  SignupModel({
    required this.accessToken,
    required this.user,
  });

  String accessToken;
  User user;

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        accessToken: json["accessToken"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "user": user.toJson(),
      };
}

class User {
  User({
    required this.email,
    required this.password,
    required this.username,
    required this.id,
    required this.v,
  });

  String email;
  String password;
  String username;
  String id;
  int v;

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        password: json["password"],
        username: json["username"],
        id: json["_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "username": username,
        "_id": id,
        "__v": v,
      };
}
