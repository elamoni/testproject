import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String phone;
  final String? password;
  const Dashboard({super.key, required this.phone,this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyDashboard"),
        ),

      body:Center(
        child: Text(phone,style: TextStyle(fontSize: 50,
        color: Colors.blue),),
      )

    );
  }
}
