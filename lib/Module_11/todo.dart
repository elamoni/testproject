//import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
//commit
//myyyyyyyyyyyyyyyy

import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks =[];
addTask(){
    final task = taskController.text;
    if (task.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
      });
    } else {}
}// addTask

  updateTask(String value, int index) {
    if (value.isNotEmpty) {
      setState(() {
        tasks[index] = value;
      });
    } else {}
  }//UpdateTask

  editTask(int index){
    final controller = TextEditingController(text: tasks[index]);
showDialog(context: context, builder: (context)=>AlertDialog(
  title: Text('Edit Task'),
  content: TextField(
    controller: controller,
  ),
  actions: [
    TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text('Cancel')),
    ElevatedButton(onPressed: (){
    updateTask(controller.text,index);
    Navigator.pop(context);
        }, child: Text('Update'))
          ],
         ),

    );
  }//editTask

  deleteTask(int index){
  setState(() {

  });
  tasks.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TodoApp'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [

                Expanded(child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    labelText: 'Enter Task'
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: addTask,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 23), // height ↑
                        minimumSize: Size(100, 0), // width ↑ (200 is example)
                      ),

                      child: Text('Add',
                        style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),//padding
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
                itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){
                          editTask(index);
                        }, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          deleteTask(index);
                        }, icon: Icon(Icons.delete)),
                      ],
                    ) ,
                  ),
                );
                } ),
          )
        ],
      ),
    );
  }
}
