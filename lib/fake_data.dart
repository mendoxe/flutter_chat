import 'package:flutter_chat/model/message.dart';
import 'package:flutter_chat/model/user.dart';

import 'model/chat.dart';

class FakeData {
  Chat get getFakeChat => Chat(
        messages: [
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 22),
            sender: User(username: 'Redmond Sellig'),
            isSentByMe: true,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 23),
            sender: User(username: 'Rhoana Martinez'),
            isSentByMe: false,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 25),
            sender: User(username: 'Redmond Sellig'),
            isSentByMe: true,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 25),
            sender: User(username: 'Rhoana Martinez'),
            isSentByMe: false,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 28),
            sender: User(username: 'Redmond Sellig'),
            isSentByMe: true,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 29),
            sender: User(username: 'Rhoana Martinez'),
            isSentByMe: false,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 30),
            sender: User(username: 'Redmond Sellig'),
            isSentByMe: true,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 30),
            sender: User(username: 'Rhoana Martinez'),
            isSentByMe: false,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 33),
            sender: User(username: 'Redmond Sellig'),
            isSentByMe: true,
          ),
          Message(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
            dateTime: DateTime(2023, 1, 12, 12, 33),
            sender: User(username: 'Rhoana Martinez'),
            isSentByMe: false,
          ),
        ].reversed.toList(),
        users: [
          User(username: 'Redmond Sellig'),
          User(username: 'Rhoana Martinez'),
        ],
      );
}
