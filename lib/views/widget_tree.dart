import 'package:flutter/material.dart';
import 'package:my_project_1/data/notifiers.dart';
import 'package:my_project_1/views/pages/home_page.dart';
import 'package:my_project_1/views/pages/profile_page.dart';
import 'package:my_project_1/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: lightThemeNotifier, builder:(context, value, child) {
      return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter', style: TextStyle(fontSize: 16)),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () => {lightThemeNotifier.value = !lightThemeNotifier.value}, icon: lightThemeNotifier.value ? Icon(Icons.dark_mode) : Icon(Icons.light_mode))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable:  currentIndexNotifier,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return  pages.elementAt(value);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
      );
    });
  }
}