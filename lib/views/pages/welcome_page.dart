import 'package:flutter/material.dart';
import 'package:my_project_1/views/widget_tree.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeroWidget(),
              Text('Welcome to the App!', style: TextStyle(fontSize: 21)),
              SizedBox(height: 23),
              FilledButton(onPressed: () => {
                Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context) {
                    return WidgetTree();
                  })
                )
              }, 
              child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}