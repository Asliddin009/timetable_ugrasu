import 'package:flutter/material.dart';
class IllustrationFb5 extends StatelessWidget {
  const IllustrationFb5({Key? key, this.size, required this.url}) : super(key: key);
  final Size? size;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      fit: BoxFit.fitWidth,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}