import 'package:flutter/material.dart';
import 'package:my_project_1/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentIndexNotifier, 
      builder:(context, value, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: value,
          onDestinationSelected: (index) {
            currentIndexNotifier.value = index;
          },
        );
      },
    );
  }
}