//import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

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
                ElevatedButton(onPressed: addTask,
                    child: Text('Add',style: TextStyle(color: Colors.white),))
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
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
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
