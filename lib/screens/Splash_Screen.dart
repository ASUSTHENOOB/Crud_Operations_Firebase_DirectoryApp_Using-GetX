import 'package:firebase_crud_getx/main.dart';
import 'package:firebase_crud_getx/screens/AddContact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> Navigating() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Get.to(() => const Addcontact());
  }

  @override
  void initState() {
    Navigating();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/undraw_android_jr64.png",
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.height * 0.8,
          ),
          Text(
            "D I R E C T O R Y   A P P!",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
