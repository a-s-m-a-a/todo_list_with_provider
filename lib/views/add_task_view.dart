import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_with_provider/views/bottom_sheets/add_task_bottom_sheet_view.dart';

import '../view_models/app_view_model.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child){
      return SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: viewModel.clrLvl3,
            foregroundColor: viewModel.clrLvl1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
          ),
          onPressed: (){
            viewModel.bottomSheetBuilder(const AddTaskBottomSheetView(), context);
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),),);
    },);
  }
}
