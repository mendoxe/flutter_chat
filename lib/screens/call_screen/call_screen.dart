import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/model/user.dart';
import 'package:flutter_chat/screens/call_screen/components/call_action_widget.dart';
import 'package:flutter_chat/screens/components/user_avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key, required this.user}) : super(key: key);

  static const String routeName = "/call";

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade200, Colors.blue],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 4),
            UserAvatar(
              size: 200,
              url: user.photoUrl,
            ),
            const Spacer(),
            Text(
              user.username,
              style: const TextStyle(color: Colors.white70, fontSize: 30),
            ),
            const Spacer(flex: 5),
            Row(
              children: [
                const Spacer(flex: 3),
                CallActionWidget(
                  icon: FontAwesomeIcons.volumeHigh,
                  isEndCall: false,
                  onTap: () {},
                ),
                const Spacer(),
                CallActionWidget(
                  icon: FontAwesomeIcons.video,
                  isEndCall: false,
                  onTap: () {},
                ),
                const Spacer(),
                CallActionWidget(
                  icon: FontAwesomeIcons.microphoneSlash,
                  isEndCall: false,
                  onTap: () {},
                ),
                const Spacer(),
                CallActionWidget(
                  icon: FontAwesomeIcons.phoneSlash,
                  isEndCall: true,
                  onTap: () {
                    context.beamBack();
                  },
                ),
                const Spacer(flex: 3),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
