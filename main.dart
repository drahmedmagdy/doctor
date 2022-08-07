import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'loginfirst/login.dart';

//void main() async {
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();
// runApp(const MyApp());
//}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: Login());
  }
}
