import 'package:flutter/material.dart';
import 'package:todo_application/Screens/Widgets/show-add-task-bottom-sheet.dart';
import 'package:todo_application/Screens/settingsScreen.dart';
import 'package:todo_application/Screens/tasksScreen.dart';
// import 'package:calendar_timeline/calendar_timeline.dart';
class HomeLayout extends StatefulWidget {
  static const String routeName = "Homelayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
  List<Widget> tabs = [TasksScreen(), SettingsScreen()];

  void showAddTasksSheet() {

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {

        return AddTaskSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "Todo Application",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: BottomNavigationBar(
          iconSize: 30,
          elevation: 0.0,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: ""),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 2)),
        onPressed: () {
          showAddTasksSheet();
        },
        child: Icon(Icons.add),
      ),
      body: tabs[index],
    );
  }
}
