// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_splash_screen/const.dart';
import 'package:flutter_application_splash_screen/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _nameState();
}

class _nameState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 7,
                ),
                Container(
                  width: size.width / 1.1,
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: "Soul",
                      style: TextStyle(
                          color: redColor,
                          fontSize: 45,
                          fontWeight: FontWeight.w500),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <TextSpan>[
                        TextSpan(
                          text: "mate\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "\tOnline Dating App Concept",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 3,
                ),
                const Text(
                  "Loading a new life",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: size.height / 100,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: redColor, width: 1.5),
                  ),
                  child: const LinearProgressIndicator(
                      color: redColor, backgroundColor: Colors.white),
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/heart.jpg'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
