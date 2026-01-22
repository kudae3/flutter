import 'package:flutter/material.dart';
import 'package:my_flutter/data/notifiers.dart';
import 'package:my_flutter/views/pages/welcome_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final response = await http.get(
      Uri.parse('https://bored-api.appbrewery.com/random'),
    );

    if (response.statusCode == 200) {
      final jsonRes = jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonRes['activity']);
    } else {
      throw Exception('Failed to load album');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: lightThemeNotifier, builder:(context, value, child) {
      return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: value ? Brightness.light : Brightness.dark),
        ),
        
        home: WelcomePage()
      ),
    );
    });
  }
}