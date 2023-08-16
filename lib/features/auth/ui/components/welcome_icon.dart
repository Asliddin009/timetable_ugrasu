import 'package:flutter/material.dart';
class IllustrationFb5 extends StatelessWidget {
  const IllustrationFb5({Key? key, this.size}) : super(key: key);
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/welcome_icon.png",
      fit: BoxFit.fitWidth,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}