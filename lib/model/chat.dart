import 'package:flutter_chat/model/message.dart';
import 'package:flutter_chat/model/user.dart';

class Chat {
  List<Message> messages;
  List<User> users;
  Chat({
    required this.messages,
    required this.users,
  });
}
