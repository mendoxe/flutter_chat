import 'package:flutter/material.dart';

import 'chat_action_widget.dart';

class ChatActionsSheet extends StatelessWidget {
  const ChatActionsSheet({Key? key, required this.hideChatActions})
      : super(key: key);

  final Function hideChatActions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0, top: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ChatActionWidget(
            label: "File",
            color: Colors.deepPurple,
            icon: Icons.file_present,
            onTap: _sendFile,
          ),
          ChatActionWidget(
            label: "Picture",
            color: Colors.orange.shade600,
            icon: Icons.camera,
            onTap: _sendPicture,
          ),
          ChatActionWidget(
            label: "Gallery",
            color: Colors.green,
            icon: Icons.photo,
            onTap: _sendFromGallery,
          ),
          ChatActionWidget(
            label: "Location",
            color: Colors.yellow.shade700,
            icon: Icons.location_on,
            onTap: _sendLocation,
          ),
          ChatActionWidget(
            label: "Audio",
            color: Colors.redAccent.shade700,
            icon: Icons.audio_file,
            onTap: _sendAudio,
          ),
          ChatActionWidget(
            label: "Recording",
            color: Colors.indigo,
            icon: Icons.mic,
            onTap: _sendRecording,
          ),
        ],
      ),
    );
  }

  void _sendFile() {
    hideChatActions();
  }

  void _sendPicture() {
    hideChatActions();
  }

  void _sendFromGallery() {
    hideChatActions();
  }

  void _sendLocation() {
    hideChatActions();
  }

  void _sendAudio() {
    hideChatActions();
  }

  void _sendRecording() {
    hideChatActions();
  }
}
