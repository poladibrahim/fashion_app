import 'package:dio/dio.dart';
import 'package:flt_fashion/constant/api_url.dart';
import 'package:flt_fashion/model/signUp_model.dart';
import 'package:flutter/material.dart';

class SignUpService {
  final String urlApi = "${apiUrl}/register";

  Future<String?> postSignUp(var email, var password) async {
    final UserModelSignUp userModelSignUp = UserModelSignUp(email: email, password: password);

    var response = await Dio().post(
      urlApi,
      data: userModelSignUpToJson(userModelSignUp),
    );

    if (response.statusCode == 200) {
      debugPrint("success");
      debugPrint(response.data["token"]);
      return response.data["token"];
    } else {
      debugPrint("fail");
    }
    return null;
  }
}
