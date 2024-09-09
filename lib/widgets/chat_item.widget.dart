import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/helpers/constants.dart';
import 'package:social_app/models/chat.model.dart';
import 'package:social_app/pages/chat.page.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ChatPage(),
        ),
      ),
      child: Container(
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: const EdgeInsets.symmetric(
          vertical: xmPadding,
          horizontal: lgPadding,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D0',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Github Use",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.w600, height: 1),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Gap(12),
                      Expanded(
                        child: Text(
                          "A l'instant",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.grey, fontSize: 14, height: 1),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "So, Actually y're at home",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.grey, fontSize: 13, height: 1),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: secondaryColor,
                            ),
                            child: Text(
                              "1",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
