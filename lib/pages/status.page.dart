import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/widgets/header.widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const AppHeader(
          title: "Status",
          actions: Icon(Iconsax.camera, color: Colors.white),
        ),
      ),
      body: const Text("Status"),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: const Icon(Iconsax.camera, color: Colors.white),
      ),
    );
  }
}
