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
          title: Text('My Flutter', style: TextStyle(fontSize: 16)),
          actions: [
            Icon(Icons.login),
            SizedBox(width: 8),
            Text('Login'),
          ],
          backgroundColor: Colors.teal,
        ),
        
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text('Header')),
              ListTile(
                title: Text('Drawer Item'),
                onTap: () => {},
              ),
            ],
          ),
        ),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          selectedIndex: 1,
          onDestinationSelected: (int val) => {print('Selected: $val')},
          ),
        
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () => {},
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => {},
              child: Icon(Icons.remove),
            ),
          ],
        ),

        body: Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}