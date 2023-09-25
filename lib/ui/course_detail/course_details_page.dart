import 'package:flutter/material.dart';
import 'package:rwcourses/model/course.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.name),
      ),
      body: const Text('Course Details'),
    );
  }
}
