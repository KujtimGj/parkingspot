import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.45,
              width: size.width,
              color: Colors.green,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text("Sign in now"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.07),
              child: const Text("Phone Number"),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.03),
              width: size.width * 0.8,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Enter phone number",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/signup");
                },
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.07),
                  height: size.height * 0.07,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  child: const Center(
                      child: Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Or Continue with"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.03),
              alignment: Alignment.bottomCenter,
              height: size.height * 0.1,
              width: size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.green),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.075, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.facebook_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                    Container(
                      height: size.height * 0.05,
                      width: 1.5,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/google.svg",
                          color: Colors.white,
                          height: 23,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Google",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
