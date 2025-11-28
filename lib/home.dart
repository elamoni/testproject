import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAppbar"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("this is ela"),

            //tooltip: 'Add new item', // Text displayed on long-press
            Text("this is ela"),
            Text("this is ela"),
            ElevatedButton(onPressed: (){}, child: Text("Myela"))
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed:(){print('click me');}),
    );
  }
}
