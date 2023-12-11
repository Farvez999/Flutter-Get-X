import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controller/counterController.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Center(child: Obx((){
        return Text(controller.counter.toString(),style: TextStyle(fontSize: 60),);
      }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
      ),
    );
  }
}
