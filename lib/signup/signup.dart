import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: bcgGrey,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width,
                    color: bcgGrey,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w500),
                              ),
                              Text("in less than a minute")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: size.height * 0.85,
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.05,
                                top: size.height * 0.04),
                            child: const Text("Full Name"),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                top: size.height * 0.02),
                            width: size.width * 0.9,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Enter phone number",
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.05,
                                top: size.height * 0.05),
                            child: const Text("Email Address"),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                top: size.height * 0.02),
                            width: size.width * 0.9,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Enter email address",
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.05,
                                top: size.height * 0.05),
                            child: const Text("Phone Number"),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                top: size.height * 0.02),
                            width: size.width * 0.9,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Enter phone number",
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.03),
                            child: const Center(
                              child: Text("We'll send verification code"),
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed("/verification");
                              },
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.9,
                                decoration: BoxDecoration(
                                    color: primaryGreen,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                  "CONTINUE",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
