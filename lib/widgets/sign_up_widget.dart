import 'package:flt_fashion/pages/genderChoice.dart';
import 'package:flt_fashion/service/signUp_service.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  bool isChecked = false;
  void checkBox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignUpService signUpService = SignUpService();

  late String enteredEmail;
  late String enteredPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "User Name",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(
          height: 15,
        ),
        const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
            ),
            hintText: '   PoladIbrahim',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Phone Number",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(
          height: 15,
        ),
        const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
            ),
            hintText: '   +994 55 555 55 55',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Enter Your Mail",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
            hintText: '   abc@gmail.com',
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
            hintText: '   *********',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Confirm Password",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 15,
        ),
        const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
            ),
            hintText: '   *********',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: isChecked,
            title: const Text("You agree the terms and privacy policy"),
            onChanged: (value) {
              checkBox();
            }),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 60,
          width: 350,
          child: ElevatedButton(
            onPressed: () {
              if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                enteredEmail = emailController.text;
                enteredPassword = passwordController.text;
                var data = signUpService.postSignUp(enteredEmail, enteredPassword);
                data.then((value) => debugPrint(value));
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const genderChoicePage(),
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
                  "Sign Up",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
