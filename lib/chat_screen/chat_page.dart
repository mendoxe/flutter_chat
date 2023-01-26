import 'package:flutter/material.dart';
import 'package:flutter_chat/model/chat.dart';

import 'chat_bottom_sheet.dart';
import 'chat_header_tile.dart';
import 'message_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const ChatHeaderTile(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam,
              color: Colors.grey.shade700,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chat.messages.length,
              reverse: true,
              itemBuilder: (context, index) {
                return MessageWidget(msg: chat.messages[index]);
              },
            ),
          ),
          const SizedBox(height: 65),
        ],
      ),
      bottomSheet: const ChatBottomSheet(),
    );
  }
}
