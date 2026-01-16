import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final String title;
  final String content;

  const CardWidget({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 150,
      child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(color: Colors.teal, fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(content, style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ),
    );
  }
}