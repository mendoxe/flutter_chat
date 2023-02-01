import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/components/user_avatar.dart';

class ChatHeaderTile extends StatelessWidget {
  const ChatHeaderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserAvatar(
          url:
              "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rhoana Martinez",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Last active on monday at 18:27",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        )
      ],
    );
  }
}
