import 'package:flutter/material.dart';
import 'package:flutter_chat/fake_data.dart';

import 'chat_screen/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: ChatPage(
        chat: FakeData().getFakeChat,
      ),
    );
  }
}
