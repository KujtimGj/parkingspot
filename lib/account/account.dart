import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/constants.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bcgGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: bcgGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Samantha Smith",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, top: 7, bottom: 20),
                      child: Text(
                        "My Profile",
                        style: TextStyle(color: greyText),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed("/userdetails");
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/images/avatar-1.png",
                        height: 50,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  Container(
                    height: size.height,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: primaryGreen,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: size.height * 0.10,
                              width: size.width * 0.10,
                              // color: Colors.red,
                              margin: const EdgeInsets.all(10),
                              child: const Icon(
                                Icons.wallet,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.10,
                              width: size.width * 0.30,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Wallet",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                  Text(
                                    "Quick Payments",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: double.infinity,
                              width: size.width * 0.15,
                              // color: Colors.red,
                              margin: const EdgeInsets.all(10),
                              child: const Center(
                                  child: Text(
                                "\$159.50",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            Container(
                              height: size.height * 0.10,
                              width: size.width * 0.10,
                              // color: Colors.red,
                              margin: const EdgeInsets.only(right: 10),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.12),
                    height: size.height,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.car_repair,
                              color: primaryGreen,
                              size: 30,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "My vehicle",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Add vehicle information",
                                  style: TextStyle(color: greyText),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.car_repair,
                              color: primaryGreen,
                              size: 30,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "My vehicle",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Add vehicle information",
                                  style: TextStyle(color: greyText),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.car_repair,
                              color: primaryGreen,
                              size: 30,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "My vehicle",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Add vehicle information",
                                  style: TextStyle(color: greyText),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.car_repair,
                              color: primaryGreen,
                              size: 30,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "My vehicle",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Add vehicle information",
                                  style: TextStyle(color: greyText),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.car_repair,
                              color: primaryGreen,
                              size: 30,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "My vehicle",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Add vehicle information",
                                  style: TextStyle(color: greyText),
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
          ],
        ),
      ),
    );
  }
}
