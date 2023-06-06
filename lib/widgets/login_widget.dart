import 'package:flt_fashion/pages/signUp.dart';
import 'package:flt_fashion/service/login_service.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginService loginService = LoginService();

  late String enteredEmail;
  late String enteredPassword;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Email or Phone Number",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      const SizedBox(
        height: 15,
      ),
      TextField(
        controller: emailController,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
          ),
          hintText: 'Enter Your Name',
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Password",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      const SizedBox(
        height: 15,
      ),
      TextField(
        controller: passwordController,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
          ),
          hintText: '*********',
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Forget Password?",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      SizedBox(
        height: 60,
        width: 350,
        child: ElevatedButton(
          onPressed: () {
            setState(() {});
            if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
              enteredEmail = emailController.text;
              enteredPassword = passwordController.text;
              debugPrint(enteredEmail + " " + enteredPassword);
              var data = loginService.loginUser(enteredEmail, enteredPassword);
              data.then((value) => debugPrint(value));
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignUpPage(),
              ));
            }
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, //background color of button
              side: const BorderSide(width: 3, color: Colors.white24), //border width and color
              elevation: 3, //elevation of button
              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(20) //content padding inside button
              ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
