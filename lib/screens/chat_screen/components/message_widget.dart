import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message.dart';
import 'package:intl/intl.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key, required this.msg}) : super(key: key);

  final Message msg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (msg.isSentByMe) const Spacer(),
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.8,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: msg.isSentByMe ? Colors.blue : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                msg.text,
                style: TextStyle(
                  fontSize: 14,
                  color: msg.isSentByMe
                      ? Colors.white.withOpacity(0.9)
                      : Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                DateFormat('kk:mm').format(msg.dateTime),
                style: TextStyle(
                  fontSize: 13,
                  color: msg.isSentByMe
                      ? Colors.white.withOpacity(0.6)
                      : Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
