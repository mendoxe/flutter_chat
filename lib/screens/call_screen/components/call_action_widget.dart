import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallActionWidget extends StatelessWidget {
  const CallActionWidget(
      {Key? key,
      required this.icon,
      required this.onTap,
      required this.isEndCall})
      : super(key: key);

  final IconData icon;
  final Function() onTap;
  final bool isEndCall;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isEndCall ? Colors.redAccent.shade700 : Colors.white30,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: FaIcon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
