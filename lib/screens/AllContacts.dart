import 'package:firebase_crud_getx/controller/ContactController.dart';
import 'package:firebase_crud_getx/screens/Components/Listtile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Allcontacts extends StatelessWidget {
  const Allcontacts({super.key});

  @override
  Widget build(BuildContext context) {
    Contactcontroller contactController = Get.put(Contactcontroller());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "F E T C H E D   N U M B E R S",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 58, 1, 156),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            MyTile(),
          ]),
        ));
  }
}
