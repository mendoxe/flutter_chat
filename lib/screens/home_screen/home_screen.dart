import 'package:flutter/material.dart';
import 'package:flutter_chat/fake_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/chat_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter chat"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 16,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: fakeUsers.length,
          itemBuilder: (context, index) {
            return ChatWidget(user: fakeUsers[index]);
          },
        ));
  }
}
