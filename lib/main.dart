import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Getx Couter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class Counter extends GetxController {
  RxInt count = 0.obs;

  void add() {
    count++;
  }
}

class HomePage extends StatelessWidget {
  final counter = Get.put(Counter());

  HomePage({Key? key}) : super(key: key);

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

class SecondScreen extends StatelessWidget {
  final Counter otherCounter = Get.find();

  SecondScreen({Key? key}) : super(key: key);

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
