import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '/controller/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  final Counter otherCounter = Get.find();

  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Obx(
          () => Text(
            '${otherCounter.count}',
            style: const TextStyle(fontSize: 50, color: Colors.red),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          otherCounter.add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
