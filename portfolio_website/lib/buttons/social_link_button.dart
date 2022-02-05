import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialLinkButton extends StatelessWidget {
  String labelText;
  String assetImage;
  VoidCallback onPressed;

  bool _first = true;
  double _fontSize = 20;

  SocialLinkButton(
      {required this.assetImage,
      required this.labelText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SizedBox(
        width: 20,
        height: 20,
        child: Image(
          image: AssetImage(assetImage),
        ),
      ),
      label: Text(
        labelText,
        style: TextStyle(
            // color: Colors.lightBlue,
            ),
      ),
    );
  }
}
