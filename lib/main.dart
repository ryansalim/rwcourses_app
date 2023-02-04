import 'package:flutter/material.dart';
import 'package:raywenderlichcopy/rwcourses_app.dart';
import 'package:raywenderlichcopy/strings.dart';

void main() => runApp(
      MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(primaryColor: Colors.green.shade800),
        home: const RWCoursesApp(),
      ),
    );
