import 'package:flutter/material.dart';
import 'package:my_task/views/leave_request_view.dart';
import 'package:my_task/views/print_copy_request.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LeaveRequest(),
    );
  }
}
