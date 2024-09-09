import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/helpers/constants.dart';
import 'package:social_app/widgets/header.widget.dart';
import 'package:social_app/widgets/message.widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Github Use",
          style: TextStyle(fontSize: 18),
        ),
        elevation: 6,
        actions: const [Icon(Iconsax.call), Gap(xgPadding)],
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: lgPadding),
        itemCount: 102,
        itemBuilder: (ctx, idx) {
          return MessageItem(type: idx % 2 == 0 ? "sended" : "received");
        },
      ),
    );
  }
}
