import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'second_screen.dart';
import '/controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  final counter = Get.put(Counter());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${counter.count}',
                style: const TextStyle(fontSize: 50, color: Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondScreen());
              },
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
