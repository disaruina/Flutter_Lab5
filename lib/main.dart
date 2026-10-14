import 'package:flutter/material.dart';
import 'background.dart';

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
