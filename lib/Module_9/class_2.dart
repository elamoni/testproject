import 'package:flutter/material.dart';

class FList extends StatelessWidget {
  const FList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('ListView') ,
      ),//AppBar
      body: ListView.builder(
          itemCount: 20,
          itemBuilder:(context,index){
            return Card(
              child: ListTile(
                  title: Text('Esmot'),
                subtitle: Text('977498794'),
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete, color: Colors.red,),
              ),
            );
          }

      ),


    );
  }
}
