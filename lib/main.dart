import 'package:flutter/material.dart';
import 'package:flutter_paint/circle.dart';
import 'package:flutter_paint/heart.dart';
import 'package:flutter_paint/oval.dart';
import 'package:flutter_paint/star.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const StarScreen(),
    );
  }
}
