import 'package:flutter/material.dart';
import 'package:room/utils/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        title: const Center(child: Text('TO DO', 
        textAlign: TextAlign.center, 
        style: TextStyle(
          fontFamily: 'Nunito',
          fontWeight: FontWeight.bold
        ),)),
        elevation: 0,
      ),
      body: 
      ListView(
        children: [
          toDoTile(taskCompleted: true, taskName: 'Make Tutorial',),
          toDoTile(taskName: 'Ms Dynamics 365', taskCompleted: false,),
          toDoTile(taskCompleted: true, taskName: 'Get some Sleep',),
        ],
      ),
    );
  }
}