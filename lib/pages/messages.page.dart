import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/models/chat.model.dart';
import 'package:social_app/widgets/chat_item.widget.dart';
import 'package:social_app/widgets/header.widget.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        title: AppHeader(
          title: "Chat app",
          actions: Icon(Iconsax.search_normal),
        ),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (ctx, idx) {
          return ChatItem(chat: Chat(user: "User 1"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: const Icon(Iconsax.add, color: Colors.white),
      ),
    );
  }
}
