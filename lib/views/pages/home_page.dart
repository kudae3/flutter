import 'package:flutter/material.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          HeroWidget(),
          SizedBox(height: 20),
          Text('Welcome to the Home Page!', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Card Title', style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('This is a card widget with some content.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}