import 'package:flashlight_app/torch_screen.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  runApp(const MyApp());
  TorchController().initialize();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Torch_screen(),
    );
  }
}

