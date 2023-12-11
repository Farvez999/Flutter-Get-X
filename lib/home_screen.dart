import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height *1;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get X Practices"),
      ),
      body: Column(
        children: [
          /// Start GetX Alert Dialog
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("GetX Dialog Alert in Flutter"),
              onTap: (){
                Get.defaultDialog(
                  title: 'New Dialog',
                  titlePadding: const EdgeInsets.only(top: 20),
                  middleText: 'Are you sure you want to create a new chart?',
                  contentPadding: const EdgeInsets.all(20),
                  // textConfirm: 'Yes',
                  // textCancel: 'No',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: const Text('Ok')),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: const Text('Cancel')),
                  // content: const Column(
                  //   children: [
                  //     Text("New Line"),
                  //     Text("New Line"),
                  //     Text("New Line"),
                  //     Text("New Line"),
                  //     Text("New Line"),
                  //     Text("New Line"),
                  //     Text("New Line"),
                  //   ],
                  // )
                );
              },
            ),
          ),
          /// End GetX Alert Dialog

          /// Start GetX Bottom Sheet
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("GetX Bottom Sheet in Flutter"),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: (){
                              Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          ),
          /// End GetX Bottom Sheet


          Container(
            height: height * .4,
            width: Get.width * .5,
            // height: MediaQuery.of(context).size.height * .6,
            color: Colors.red,
            child: Center(child: Text("Center"),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        /// Start Get X Snack bar
        Get.snackbar("Farvez Hossen", "Software Engineer",
            mainButton:
                TextButton(onPressed: () {}, child: const Text("Click")),
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.TOP);
        /// End Get X Snack bar

      }),
    );
  }
}
