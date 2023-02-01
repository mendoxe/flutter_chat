import 'package:flutter/material.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField({Key? key, required this.sendMessage}) : super(key: key);

  final Function sendMessage;

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        controller: _textEditingController,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 1.0),
          border: InputBorder.none,
          hintText: 'Type a msg...',
          suffixIcon: IconButton(
            onPressed: _sendMessage,
            icon: Icon(
              Icons.send,
              color: Colors.blue.shade700,
            ),
          ),
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_textEditingController.text.isEmpty) return;
    widget.sendMessage(_textEditingController.text);
    _textEditingController.clear();
  }
}
