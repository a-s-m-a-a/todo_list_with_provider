import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier{
  List<Task> tasks = <Task>[];
  User user = User('asmaa ahmed ');

  Color clrLvl1 = Colors.red.shade50;
  Color clrLvl2 = Colors.red.shade200;
  Color clrLvl3 = Colors.red.shade800;
  Color clrLvl4 = Colors.red.shade900;

  int get numTasks => tasks.length;
  int get numTasksRemaining => tasks.where((task) => !task.complete).length;
  String get username => user.username;

  void addTask(Task newTask){
    tasks.add(newTask);
    notifyListeners();
  }

  bool getTaskValue (int index){
    return tasks[index].complete;
  }

  void setTaskValue(int index, bool taskValue){
    tasks[index].complete = taskValue;
    notifyListeners();
  }
  void deleteTask (int index){
    tasks.removeAt(index);
    notifyListeners();
  }

  String getTaskTitle( int index){
    return tasks[index].title;
  }
  void updateUserName (String newUserName){
    user.username = newUserName;
    notifyListeners();
  }
  void deleteAllTaskes (){
    tasks.clear();
    notifyListeners();
  }
void deleteCompletedTask()
{
  tasks = tasks.where((task) => !task.complete).toList();
  notifyListeners();
}

void bottomSheetBuilder(Widget bottomSheetView, BuildContext context ){
  showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: ((context){
        return bottomSheetView;

  }));
}

}