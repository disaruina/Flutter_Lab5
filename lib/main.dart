import 'package:flutter/material.dart';
import 'package:my_app_shkurskii/background.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BackgroundContainer(
          Colors.black87,
          Colors.blueGrey,
        ),
      ),
    ),
  );
}
