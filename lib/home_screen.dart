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
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X Practices"),
      ),
      body: Column(
        children: [],
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
