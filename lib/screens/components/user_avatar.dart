import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar(
      {Key? key, this.size = 35, required this.url, this.isBoxShaped = false})
      : super(key: key);

  final double size;
  final String url;
  final bool isBoxShaped;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: isBoxShaped ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: isBoxShaped ? BorderRadius.circular(10) : null,
        color: Colors.blue,
      ),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: url,
      ),
    );
  }
}
