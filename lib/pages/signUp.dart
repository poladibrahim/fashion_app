import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  @override
  void checkBox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      //2
      SliverAppBar(
        expandedHeight: 250.0,
        flexibleSpace: FlexibleSpaceBar(
          title: const Text('Create Your \nAccount'),
          background: Image.asset(
            'assets/images/firstImage.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverToBoxAdapter(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          const TextField(
            decoration: InputDecoration(
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
          SizedBox(
            height: 20,
          ),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: isChecked,
              title: Text("You agree the terms and privacy policy"),
              onChanged: (value) {
                checkBox();
              }),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 60,
            width: 350,
            child: ElevatedButton(
              onPressed: () {},
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
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              Text('or'),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            width: 350,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, //background color of button
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
                  Icon(
                    Icons.facebook,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Continue With Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 60,
            width: 350,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, //background color of button
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
                  Icon(
                    Icons.report_gmailerrorred,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Continue With FaceBook",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an acount?"),
              TextButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text("Login"))
            ],
          ),
        ]),
      )),
    ]));
  }
}
