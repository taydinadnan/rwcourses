import 'package:flutter/material.dart';
import 'package:rwcourses/strings.dart';
import 'package:rwcourses/rwcourses_app.dart';

void main() => runApp(
      MaterialApp(
        title: Strings.appTitle,
        // theme: ThemeData(primaryColor: Colors.green.shade800),
        home: const RWCoursesApp(),
      ),
    );
