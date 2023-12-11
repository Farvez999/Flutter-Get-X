import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/Navigator/navigator_screen.dart';
import 'package:getx_project/Navigator/screen_one.dart';
import 'package:getx_project/Navigator/screen_two.dart';
import 'package:getx_project/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
      home: const NavigatorScreen(),
      getPages: [
        GetPage(name: '/', page: ()=>NavigatorScreen()),
        GetPage(name: '/screenOne', page: ()=>ScreenOne()),
        GetPage(name: '/screenTwo', page: ()=>ScreenTwo()),
      ],
    );
  }
}
