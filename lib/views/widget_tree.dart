import 'package:flutter/material.dart';
import 'package:my_project_1/widgets/navbar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
          appBar: AppBar(
            title: Text('My Flutter', style: TextStyle(fontSize: 16)),
          ),
        
          bottomNavigationBar: NavbarWidget(),
        
        );
  }
}