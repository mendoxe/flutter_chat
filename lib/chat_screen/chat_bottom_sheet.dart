import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
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
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.grey.shade700,
            ),
          ),
          Expanded(
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type a msg...',
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic,
              color: Colors.grey.shade700,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
