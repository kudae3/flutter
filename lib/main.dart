import 'package:flutter/material.dart';
import 'package:my_project_1/data/notifiers.dart';
import 'package:my_project_1/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: lightThemeNotifier, builder:(context, value, child) {
      return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: value ? Brightness.light : Brightness.dark),
        ),
        
        home: WidgetTree()
      ),
    );
    });
  }
}