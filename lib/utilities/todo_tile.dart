import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), 
        children: [
          SlidableAction(onPressed: deleteFunction,
          icon: Icons.delete,
          backgroundColor:  const Color.fromARGB(255, 210, 202, 62),
          borderRadius: BorderRadius.circular(12.0),
          )
        ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                //checkbox
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: const Color.fromARGB(255, 210, 202, 62),
                  checkColor: const Color.fromARGB(255, 255, 255, 255),
                ),
        
                //task name
                Expanded(
                  child: Text(
                    taskName,
                    style: TextStyle(
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
