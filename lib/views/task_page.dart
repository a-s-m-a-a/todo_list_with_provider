import 'package:flutter/material.dart';
import 'package:todo_with_provider/views/header_view.dart';
import 'package:todo_with_provider/views/task_info_view.dart';
import 'package:todo_with_provider/views/task_list_view.dart';

import 'add_task_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(flex: 1, child: HeaderView()),
            Expanded(flex: 1, child: TaskinfoView()),
            Expanded(flex: 7, child: TaskListView()),
          ],
        ),
      ),
      floatingActionButton: AddTaskView(),
    );
  }
}
