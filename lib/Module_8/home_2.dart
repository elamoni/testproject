import 'package:flutter/material.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Homeeeeeeeeeeeeee22222222222222222',
        style: TextStyle(color: Colors.red)),
        ElevatedButton(onPressed:(){
          Navigator.pop(context);},child:Text('Back'))
        ],
      ),
      ),
      );
  }
}
