import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX localization"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('name'.tr),
            subtitle: Text('Country'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
              }, child: Text(
                "English"
              )),
              SizedBox(width: 20,),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ja','JP'));
              }, child: Text(
                  "Japanese"
              ))
            ],
          )
        ],
      ),
    );
  }
}
