import 'package:flutter/material.dart';
import 'package:my_project_1/widgets/card_widget.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            HeroWidget(title: 'HOME PAGE'),
            SizedBox(height: 20),
            Text('Welcome to the Home Page!', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
            CardWidget(title: 'Card Title', content: 'This is a card widget with some content.'),
          ],
        ),
      ),
    );
  }
}