import 'package:flutter/material.dart';
import 'package:rwcourses/strings.dart';
import 'package:rwcourses/ui/courses/rwcourses_app.dart';

void main() => runApp(
      MaterialApp(
        title: Strings.appTitle,
        // theme: ThemeData(primaryColor: Colors.green.shade800),
        home: const RWCoursesApp(),
      ),
    );
