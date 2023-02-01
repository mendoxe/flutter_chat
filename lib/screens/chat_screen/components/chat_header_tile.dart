import 'package:flutter/material.dart';
import 'package:flutter_chat/model/user.dart';
import 'package:flutter_chat/screens/components/user_avatar.dart';

class ChatHeaderTile extends StatelessWidget {
  const ChatHeaderTile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatar(
          url: user.photoUrl,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.username,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              children: [
                if (user.isActive)
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                Text(
                  user.isActive ? "Active" : "Last active on monday at 18:27",
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
