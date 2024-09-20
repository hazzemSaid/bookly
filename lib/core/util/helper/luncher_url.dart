import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launcher_custom_url(
    {required BuildContext context, required String url}) async {
  //lanuch the cart
  Uri _url = Uri.parse(url);
  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Could not preview the book'),
      ),
    );
  }
}
