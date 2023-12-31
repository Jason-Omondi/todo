import 'package:flutter/material.dart';
import 'package:room/components/button.dart';

class dialogueBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  dialogueBox({super.key, 
  required this.controller, 
  required this.onCancel, 
  required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 199, 194, 194),
      content: Container(
        height: 200,
        child: Column(
          children: [
            TextField(
              //grab the controller 
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: 'Write Task',
                hintStyle: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w300)
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //save
                MyButton(text: 'Save', onPressed: onSave,),
                const SizedBox(width: 25,),

                //cancel
                MyButton(text: 'Cancel', onPressed: onCancel)
              ],
            )
            ],
        ),
      ),
      
    );
  }
}