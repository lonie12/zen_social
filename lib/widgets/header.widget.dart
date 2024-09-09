import 'package:flutter/material.dart';
import 'package:social_app/helpers/colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.title, required this.actions});

  final String title;
  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: secondaryColor, fontWeight: FontWeight.w600, fontSize: 24),
        ),
        actions,
      ],
    );
  }
}
