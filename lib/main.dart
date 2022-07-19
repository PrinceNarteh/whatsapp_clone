import "package:device_preview/device_preview.dart";
import 'package:flutter/material.dart';

import 'colors.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData.dark().copyWith(backgroundColor: backgroundColor),
      home: const Text("Hello, World"),
    );
  }
}
