import 'package:flutter/material.dart';
import 'package:rwcourses/constants.dart';
import 'package:rwcourses/model/course.dart';
import 'package:rwcourses/repository/course_repository.dart';
import 'package:rwcourses/ui/courses/courses_controller.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _controller = CoursesController(CourseRepository());
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
      future: _controller.fetchCourses(Constants.allFilter),
      builder: (context, snapshot) {
        final courses = snapshot.data;
        if (courses == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int position) {
            return _buildRow(courses[position]);
          },
        );
      },
    );
  }

  Widget _buildRow(Course course) {
    return Text(course.name);
  }
}
