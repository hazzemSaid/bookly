import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class photoforidetailestem extends StatelessWidget {
  final String imageUrl;
  const photoforidetailestem({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        height: 300,
        width: 200,
      ),
    );
  }
}
