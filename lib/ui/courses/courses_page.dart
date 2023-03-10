import 'package:flutter/material.dart';
import 'package:raywenderlichcopy/repository/course_repository.dart';
import '../../constants.dart';
import '../../model/course.dart';
import 'courses_controller.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _contoller = CourseController(CourseRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
      future: _contoller.fetchCourses(Constants.allFilter),
      builder: (context, snapshot) {
        final courses = snapshot.data;
        if (courses == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Text(courses.toString());
      },
    );
  }
}
