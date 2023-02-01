import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/model/user.dart';
import 'package:flutter_chat/screens/chat_screen/chat_screen.dart';
import 'package:flutter_chat/screens/components/user_avatar.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          UserAvatar(url: user.photoUrl, size: 55, isBoxShaped: true),
          if (user.isActive)
            Positioned(
              top: -2,
              left: -2,
              child: Container(
                width: 9,
                height: 9,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
      title: Text(user.username),
      subtitle: Text(
        "Lorem ipsum dolor sit amet...",
        style: TextStyle(color: Colors.blueGrey.shade300),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            user.isActive ? "now" : "${user.username.length + 10} min",
            style: TextStyle(fontSize: 12, color: Colors.blueGrey.shade300),
          ),
          const SizedBox(height: 4),
          Container(
            height: 25,
            width: 25,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 22, 182, 240),
              shape: BoxShape.circle,
            ),
            child: const Text(
              "2",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      onTap: () {
        context.beamToNamed(ChatScreen.routeName, data: user);
      },
    );
  }
}
