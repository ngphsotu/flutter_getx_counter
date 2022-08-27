// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Getx Couter',
//       theme: ThemeData(primarySwatch: Colors.green),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   RxInt count = 0.obs;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter App'),
//       ),
//       body: Center(
//         child: Obx(
//           () => Text('$count', style: const TextStyle(fontSize: 50)),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => count++,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
