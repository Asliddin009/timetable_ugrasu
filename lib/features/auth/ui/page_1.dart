import 'package:flutter/material.dart';

import 'components/welcome_icon.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IllustrationFb5(
        size: Size(MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width),
      ),
    );
  }
}
