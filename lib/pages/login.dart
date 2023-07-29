import 'package:flutter/material.dart';
import 'package:room/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// list of tasks
  List toDoList = [
    ['Make Tutorial', false],
    ['Ms Dynamics 365', true],
    ['Finish PMP certification', false],
  ];

  // handling tapping the check box
  void checkBoxChanged (value, index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

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
      ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, int index) 
        { 
          return toDoTile(
          taskName: toDoList[index][0], 
          taskCompleted: toDoList[index][1], 
          onChanged: (value) => checkBoxChanged(value, index),
          );
         },
        
      ),
    );
  }
}