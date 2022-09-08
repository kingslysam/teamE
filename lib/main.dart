import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tcms_group4/Constants/constant.dart';
import 'package:tcms_group4/Screen/authentication.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: defaultColorScheme,
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(
        title: 'CRDB',
      ),
    );
  }
}
