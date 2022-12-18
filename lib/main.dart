import 'package:disdukcapil_app/view/kartu_keluarga.dart';
import 'package:flutter/material.dart';
import 'package:disdukcapil_app/view/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dukcapil App",
      theme: ThemeData(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
