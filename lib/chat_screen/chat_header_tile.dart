import 'package:flutter/material.dart';

class ChatHeaderTile extends StatelessWidget {
  const ChatHeaderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Redmond Sellig",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Last active on monday at 18:27",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        )
      ],
    );
  }
}
