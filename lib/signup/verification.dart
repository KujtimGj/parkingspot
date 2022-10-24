import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/constants.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                                "Verification",
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
                            padding: EdgeInsets.only(left: size.width * 0.04,top: 20),
                            child: const Text("We've sent 6 digit verification code"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.1,
                                top: size.height * 0.04,
                                bottom: 0),
                            child: const Text("Full Name"),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.11,
                                right: size.width * 0.11,
                                top: size.height * 0.01),
                            width: size.width,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Enter 6 digit code",
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: (){
                                Get.toNamed("/home");
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: size.height * 0.06),
                                height: size.height * 0.07,
                                width: size.width * 0.9,
                                decoration: BoxDecoration(
                                    color: primaryGreen,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                  "GET STARTED",
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
