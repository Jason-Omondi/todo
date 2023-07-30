import 'package:flutter/material.dart';

class toDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  toDoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20.0, left:20.0, top:20.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
               onChanged: onChanged,
               activeColor: Colors.black,
               ),
            Text(taskName, 
            style: TextStyle(
              decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5)
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