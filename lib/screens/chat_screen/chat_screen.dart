import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/fake_data.dart';
import 'package:flutter_chat/model/chat.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_chat/model/message.dart';
import 'package:flutter_chat/screens/call_screen/call_screen.dart';
import 'package:flutter_chat/screens/chat_screen/components/chat_actions_sheet.dart';
import 'package:flutter_chat/screens/home_screen/home_screen.dart';

import 'components/chat_bottom_sheet.dart';
import 'components/chat_header_tile.dart';
import 'components/message_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.chat}) : super(key: key);

  static const String routeName = "/chat";

  final Chat chat;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late Chat _chat;
  AnimationController? _controler;
  bool isActionVisible = false;

  @override
  void initState() {
    super.initState();
    _chat = widget.chat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => context.beamToNamed(HomeScreen.routeName),
        ),
        title: ChatHeaderTile(
          user: _chat.users.first,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam,
              color: Colors.grey.shade700,
            ),
          ),
          IconButton(
            onPressed: () {
              context.beamToNamed(
                CallScreen.routeName,
                data: _chat.users.first,
              );
            },
            icon: Icon(
              Icons.phone,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _chat.messages.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    if (!_chat.messages[index].isSentByMe) {
                      return MessageWidget(msg: widget.chat.messages[index])
                          .animate()
                          .slideX(duration: 150.ms, begin: -0.1);
                    }
                    return MessageWidget(msg: widget.chat.messages[index])
                        .animate()
                        .slideX(duration: 150.ms, begin: 0.1);
                  },
                ),
              ),
              const SizedBox(height: 85),
            ],
          ),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: ChatActionsSheet(hideChatActions: _hideChatActions),
          )
              .animate(
                onPlay: (controller) {
                  _controler = controller..reverse();
                },
              )
              .slideY(begin: 1, duration: 300.ms, curve: Curves.easeIn)
              .scaleX(
                duration: 250.ms,
                delay: 100.ms,
                alignment: Alignment.bottomLeft,
              ),
        ],
      ),
      bottomSheet: ChatBottomSheet(
        sendMessage: _sendMessage,
        toggleActionVisible: _toggleChatActionsVisible,
      ),
    );
  }

  void _toggleChatActionsVisible() {
    if (_controler == null) return;
    isActionVisible ? _controler!.reverse() : _controler!.forward();

    isActionVisible = !isActionVisible;
  }

  void _hideChatActions() {
    if (_controler == null) return;
    _controler!.reverse();

    isActionVisible = false;
  }

  void _sendMessage(String content) {
    setState(() {
      _chat.messages.insert(
        0,
        Message(
          text: content,
          dateTime: DateTime.now(),
          sender: redmond,
          isSentByMe: true,
        ),
      );
    });
  }
}
