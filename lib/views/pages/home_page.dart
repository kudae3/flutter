import 'package:flutter/material.dart';
import 'package:my_project_1/data/constant.dart';
import 'package:my_project_1/widgets/card_widget.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<String> courseList = [
      KValue.course1,
      KValue.course2,
      KValue.course3,
      KValue.course4,
      KValue.course5,
      KValue.course6,
    ];
    
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            HeroWidget(title: 'HOME PAGE'),
            SizedBox(height: 20),
            Text('Welcome to the Home Page!', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),

            ...List.generate(courseList.length, (index) => 
              CardWidget(
                title: courseList[index], 
                content: 'This is the content of card number $index.'
              )
            ),


          ],
        ),
      ),
    );
  }
}