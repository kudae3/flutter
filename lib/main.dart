import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.dark),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter'),
          centerTitle: false,
          leading: Icon(Icons.login),
          actions: [
            Text('Login'),
          ],
          backgroundColor: Colors.teal,
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          selectedIndex: 1,
          onDestinationSelected: (int val) => {print('Selected: $val')},
          ),
        body: Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}