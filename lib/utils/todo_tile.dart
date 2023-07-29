import 'package:flutter/material.dart';

class toDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  toDoTile({super.key, required this.taskName, required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
               onChanged: onChanged),
            Text(taskName, 
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold
        ),),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}