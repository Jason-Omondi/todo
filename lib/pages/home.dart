import 'package:flutter/material.dart';
import 'package:room/components/dialogue_box.dart';
import 'package:room/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = TextEditingController();
// list of tasks
  List toDoList = [
    ['Make Tutorial', false],
    ['Ms Dynamics 365', true],
    ['Finish PMP certification', false],
  ];

  // handling tapping the check box
  void checkBoxChanged (bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // handle add tasks
  void addTask () {
    showDialog(context: context, builder: ((context) {
      return dialogueBox(
        controller: _controller,
        onSave: () { 
          saveTask();
          },
          
         
        onCancel: () => Navigator.pop(context),  
        
      );
    }));
  }

  //handle save
  void saveTask () {
    setState(() {
            //add the current item to the list
            toDoList.add([_controller.text.toString(), false]);
            Navigator.pop(context);
            _controller.clear();
         });
  }

  // handle delete task from the toDoList
  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
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
          return SingleChildScrollView(
            child: toDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => {},
            ),
          );
         },
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: addTask, child: const Icon(Icons.add_circle)),
    );
  }
}