import 'package:flutter_chat/model/message.dart';
import 'package:flutter_chat/model/user.dart';

import 'model/chat.dart';

User redmond = User(
  username: 'Redmond Sellig',
  photoUrl:
      "https://images.pexels.com/photos/3938465/pexels-photo-3938465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  isActive: false,
);
User rhoana = User(
  username: 'Rhoana Martinez',
  photoUrl:
      "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  isActive: true,
);
User diana = User(
  username: 'Diana Gomez',
  photoUrl:
      "https://images.pexels.com/photos/5704849/pexels-photo-5704849.jpeg?auto=compress&cs=tinysrgb&w=1600",
  isActive: false,
);
User candice = User(
  username: 'Candice Wolf',
  photoUrl:
      "https://images.pexels.com/photos/7020543/pexels-photo-7020543.jpeg?auto=compress&cs=tinysrgb&w=1600",
  isActive: false,
);
User bob = User(
  username: 'Bob Daneq',
  photoUrl:
      "https://images.pexels.com/photos/4890259/pexels-photo-4890259.jpeg?auto=compress&cs=tinysrgb&w=1600",
  isActive: true,
);
User anita = User(
  username: 'Anita Nuka',
  photoUrl:
      "https://images.pexels.com/photos/6157386/pexels-photo-6157386.jpeg?auto=compress&cs=tinysrgb&w=1600",
  isActive: true,
);

List<User> fakeUsers = [redmond, rhoana, diana, candice, bob, anita];

Chat fakeChat = Chat(
  messages: [
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 22),
      sender: redmond,
      isSentByMe: true,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 23),
      sender: rhoana,
      isSentByMe: false,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 25),
      sender: redmond,
      isSentByMe: true,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 25),
      sender: rhoana,
      isSentByMe: false,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 28),
      sender: redmond,
      isSentByMe: true,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 29),
      sender: rhoana,
      isSentByMe: false,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 30),
      sender: redmond,
      isSentByMe: true,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 30),
      sender: rhoana,
      isSentByMe: false,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 33),
      sender: redmond,
      isSentByMe: true,
    ),
    Message(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis euismod elit sit amet vestibulum. Nulla commodo odio laoreet efficitur lacinia.",
      dateTime: DateTime(2023, 1, 12, 12, 33),
      sender: rhoana,
      isSentByMe: false,
    ),
  ].reversed.toList(),
  users: [],
);
