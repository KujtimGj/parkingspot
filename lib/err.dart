import 'package:flutter/material.dart';

class Cars extends StatefulWidget {
  const Cars({super.key});

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color(0xff880000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.1),
                child: const Text(
                  "type 'Null' is not a subtype of\n'String'",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  "See also: https://flutter.dev/\ndocs/testing/error",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ),
            ) 
          ],
        ),
      ),
    );
  }
}
