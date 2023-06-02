import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Payment method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
                  ),
                  hintText: '   PoladIbrahim',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black12), //<-- SEE HERE
                  ),
                  hintText: '   +994 55 555 55 55',
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
