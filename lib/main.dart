import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_with_provider/view_models/app_view_model.dart';
import 'package:todo_with_provider/views/task_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=> AppViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskPage(),
    );
  }
}