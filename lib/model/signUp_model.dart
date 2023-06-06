// To parse this JSON data, do
//
//     final userModelSignUp = userModelSignUpFromJson(jsonString);

import 'dart:convert';

UserModelSignUp userModelSignUpFromJson(String str) => UserModelSignUp.fromJson(json.decode(str));

String userModelSignUpToJson(UserModelSignUp data) => json.encode(data.toJson());

class UserModelSignUp {
  final String email;
  final String password;

  UserModelSignUp({
    required this.email,
    required this.password,
  });

  factory UserModelSignUp.fromJson(Map<String, dynamic> json) => UserModelSignUp(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
