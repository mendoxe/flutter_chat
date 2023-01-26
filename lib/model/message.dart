import 'package:flutter_chat/model/user.dart';

class Message {
  String text;
  DateTime dateTime;
  User sender;
  // Would be checked against current logged user normally
  bool isSentByMe;

  Message({
    required this.text,
    required this.dateTime,
    required this.sender,
    required this.isSentByMe,
  });
}
