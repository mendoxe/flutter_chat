import 'package:flutter/material.dart';

import 'chat_text_field.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({
    Key? key,
    required this.sendMessage,
    required this.toggleActionVisible,
  }) : super(key: key);

  final Function sendMessage;
  final Function toggleActionVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12.0, top: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(
              padding: const EdgeInsets.all(8),
              onPressed: () => toggleActionVisible(),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 8.0,
                  top: 8.0,
                  right: 6.0,
                ),
                child: ChatTextField(
                  sendMessage: sendMessage,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
