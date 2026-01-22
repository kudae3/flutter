import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:my_flutter/data/activity_class.dart';
import 'package:my_flutter/widgets/hero_widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  
  late Future<Activity> _activityFuture;

  @override
  void initState() {
    super.initState();
    _activityFuture = getData();
  }

Future<Activity> getData() async {
  final response = await http.get(
    Uri.parse('https://bored-api.appbrewery.com/random'),
  );
  if (response.statusCode == 200) {
    return Activity.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
    body: FutureBuilder<Activity>(
      future: _activityFuture,
      builder: (context, snapshot) {
        // Loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // Error
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }

        // Success
        if (snapshot.hasData) {
          final activity = snapshot.data!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroWidget(title: activity.type),
              SizedBox(height: 20),
              Text(activity.activity),
            ],
          );
        }

        return const SizedBox();
      },
    ),
  );
}

}