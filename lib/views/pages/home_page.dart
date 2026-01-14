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
        ],
      ),
    );
  }
}