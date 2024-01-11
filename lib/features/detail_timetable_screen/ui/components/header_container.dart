import 'package:flutter/material.dart';

class DetailTimetableHeader extends StatelessWidget {
  const DetailTimetableHeader({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
       height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
