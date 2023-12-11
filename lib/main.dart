import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/Navigator/navigator_screen.dart';
import 'package:getx_project/Navigator/screen_one.dart';
import 'package:getx_project/Navigator/screen_two.dart';
import 'package:getx_project/home_screen.dart';
import 'package:getx_project/view/screens/counter/counter_screen.dart';
import 'package:getx_project/view/screens/languages/laguages_screen.dart';
import 'package:getx_project/view/screens/languages/languages_translations.dart';

void main() {
  var lang = "en";
  runApp( MyApp(lang: lang,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.lang});
  final String lang;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: Locale('en','US'),
      translations: Languages(),
      locale: lang=="en"? const Locale("en" , "US") :  const Locale("ja" , "JP"),
      fallbackLocale:const Locale("en" , "US"),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
      // home: const LanguageScreen(),
      // home: const NavigatorScreen(),
      home: const CounterScreen(),
      // getPages: [
      //   GetPage(name: '/', page: ()=>NavigatorScreen()),
      //   GetPage(name: '/screenOne', page: ()=>ScreenOne()),
      //   GetPage(name: '/screenTwo', page: ()=>ScreenTwo()),
      // ],
    );
  }
}
