import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/Navigator/screen_one.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  // Get.to(ScreenOne(name: 'Farvez',));
                  Get.toNamed('/screenOne', arguments: [
                    'Farvez Hossen',
                    'My name is this'
                  ]);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ScreenOne()));
                },
                child: Text("Go to next screen")),
          )
        ],
      ),
    );
  }
}
