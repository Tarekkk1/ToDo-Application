import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:todo_application/Screens/Widgets/taskWiget.dart';
import 'package:todo_application/SharedFiles/Styles/app-color.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
DateTime dateTime =DateTime.now();

  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [
            Container(

              child: DatePicker(

              DateTime.now(),
    initialSelectedDate: DateTime.now(),
    selectionColor: lightColor,
    selectedTextColor: Colors.white,
    dateTextStyle: TextStyle(
      color: lightColor
    ),
    monthTextStyle: TextStyle(
    color: lightColor
    ),       dayTextStyle: TextStyle(
    color: lightColor
    )
                ,

    height: 120,
    onDateChange: (date) {
    // New date selected
    setState(() {
    dateTime = date;
    });
    },
    ),
            ),
          Expanded(



              child: ListView(

                children: [
              TaskWidget(),
              TaskWidget(),
              TaskWidget(),
              TaskWidget(),
              TaskWidget(),

            ],
          )
          )
          ]
        );


  }}
