import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Course Page!'),
      ),
    );
  }
}