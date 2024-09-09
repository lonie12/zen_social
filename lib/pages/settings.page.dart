import 'package:flutter/material.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/widgets/header.widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const AppHeader(title: "Settings", actions: SizedBox()),
      ),
      body: const Text("Settings"),
    );
  }
}
