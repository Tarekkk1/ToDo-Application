import 'package:flutter/material.dart';
import 'package:todo_application/SharedFiles/Styles/app-color.dart';

class AddTaskSheet extends StatefulWidget {
  @override
  State<AddTaskSheet> createState() => _AddTaskSheetState();
}
var formKey=GlobalKey<FormState>(


);


class _AddTaskSheetState extends State<AddTaskSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
        EdgeInsets.only(bottom: MediaQuery
            .of(context)
            .viewInsets
            .bottom),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add New Task",
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value==null || value.isEmpty)
                      return "Please Enter Task Title ";

                    else return null;

                  },
                  decoration: InputDecoration(
                    
                      label: Text("Text Title "),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: lightColor))),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value==null || value.isEmpty)
return "Please Enter Task Discreption ";

                      else return null;

                  },
                  decoration: InputDecoration(
                      label: Text("Task Discrption"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: lightColor))),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(margin: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  widthFactor: 20,
                  child: Text(
                    "Select Time ",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),

                ),
              ), SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    chooseTaskDate();
                  },
                  child: Text("12/12/2012"))
              ,
              Container(
                margin: EdgeInsets.all(22),
                width: double.infinity,
                child: ElevatedButton(onPressed: () {

                  if (formKey.currentState!.validate())
                    {
                      print ("All working well");

                    }
                }, child: Text("Add Task ", style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                    color: Colors.white
                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }

  void chooseTaskDate() {
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 350)));

  }
}
