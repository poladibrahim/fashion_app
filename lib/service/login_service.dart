import 'package:dio/dio.dart';
import 'package:flt_fashion/constant/api_url.dart';
import 'package:flt_fashion/model/login_model.dart';
import 'package:flutter/material.dart';

class LoginService {
  final String url = "${apiUrl}/login";

  Future<String?> loginUser(var email, var password) async {
    final UserModel userModel = UserModel(email: email, password: password);

    final response = await Dio().post(
      url,
      data: userModelToJson(userModel),
    );
    if (response.statusCode == 200) {
      debugPrint(response.data["token"]);
      return response.data["token"];
    } else {
      debugPrint("fail");
    }
    return null;
  }
}
