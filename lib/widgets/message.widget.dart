import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/helpers/utils.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key, required this.type});

  // final Message message;
  final String type;

  @override
  Widget build(context) {
    return Align(
      alignment: alignItem(type),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: type == "received" ? const Color(0XFFEEF7FF) : secondaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                "Hello from chat app Support. Hope y're doing well.",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      color: type == "sended" ? Colors.white : null,
                    ),
              ),
            ),
            const Gap(12),
            Text(
              utilsToTime(DateTime.now()),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 12,
                  color: type == "sended" ? Colors.grey.shade300 : Colors.grey),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}

AlignmentGeometry alignItem(String type) {
  return type == "sended"
      ? Alignment.centerRight
      : type == "received"
          ? Alignment.centerLeft
          : Alignment.bottomRight;
}
