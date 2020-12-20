import 'package:flutter/material.dart';
import 'package:uxe/components/cards/recent_course_card.dart';
import 'package:uxe/models/course.dart';
import 'package:uxe/screens/sidebar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: RecentCourseCard(
              course: recentCourses[0],
            ),
          ),
        ),
      ),
    );
  }
}
