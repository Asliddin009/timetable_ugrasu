import 'package:flutter/material.dart';


class FoundScreen extends StatefulWidget {
  final String value;
  final Function() screenClose;
  const FoundScreen({super.key, required this.value, required this.screenClose});

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context){
            return RotatedBox(quarterTurns: 0,child: IconButton(
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              onPressed: () => Navigator.pop(context, false),
            ),);
          },
        ),
        title: const Text("Result", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Result: ", style: TextStyle(fontSize: 20),),
              const SizedBox(height: 20),
              Text(widget.value, style: const TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
