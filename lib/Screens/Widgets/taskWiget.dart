
import 'package:flutter/material.dart';
import 'package:todo_application/SharedFiles/Styles/app-color.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TaskWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: Slidable(
          // Specify a key if the Slidable is dismissible.
          key: const ValueKey(0),

          // The start action pane is the one at the left or the top side.
          startActionPane: ActionPane(
            dragDismissible: true,
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),

            // A pane can dismiss the Slidable.
            dismissible: DismissiblePane(onDismissed: () {




            }),

            // All actions are defined in the children parameter.
            children:  [ // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                onPressed: (context) {

                },
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.red,
                icon: Icons.delete,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed:(context) {

                },
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                icon: Icons.settings,
                label: 'Setting ',
              ),
            ],
          ),
          child:

          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            height: 100,
            decoration: BoxDecoration(
                borderRadius:   BorderRadius.circular(20)
                ,color:  Colors.white
            ),
            width: double.infinity,

            child: Container(

              height: 90,

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: VerticalDivider(

                      thickness: 5,
                      color: lightColor,

                    ),
                  ),
                  Column(
                    children: [
                      Text ("Task Name ", style:Theme.of(context).textTheme.bodyMedium  ),
                      Text ("Task Disctriation", style:  Theme.of(context).textTheme.bodySmall)
                      ,
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightColor
                      ),
                      child: Icon(Icons.done,
                        color: Colors.white,



                        size: 30,),
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      )

;

  }
}
