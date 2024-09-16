// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_crud_getx/controller/ContactController.dart';
import 'package:firebase_crud_getx/screens/AllContacts.dart';
import 'package:firebase_crud_getx/screens/Components/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Addcontact extends StatelessWidget {
  const Addcontact({super.key});

  @override
  Widget build(BuildContext context) {
    Contactcontroller contactcontroller = Get.put(Contactcontroller());
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 58, 1, 156),
        title: Text(
          "D I R E C T O R Y",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                Get.to(Allcontacts(), transition: Transition.fade);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.phone,
                  size: 25,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 58, 1, 156),
                    offset: const Offset(
                      4.0,
                      7.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 3.0,
                  ), //BoxShadow
                  //
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "N E W   N U M B E R S ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Add credentials here",
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Mytextfield(
                      onpress: () {},
                      btnname: "Enter Name",
                      icon: Icons.person,
                      controller: contactcontroller.namecontroller,
                    ),
                    Mytextfield(
                      onpress: () {},
                      btnname: "Enter phone number",
                      icon: Icons.call,
                      controller: contactcontroller.numbercontroller,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        contactcontroller.AddContact();
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 1, 156),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Save Contact",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
