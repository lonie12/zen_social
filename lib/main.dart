import 'package:flutter/material.dart';
import 'package:social_app/app.dart';
import 'package:social_app/helpers/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat app",
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      home: const App(),
    );
  }
}
