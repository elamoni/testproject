import 'package:flutter/material.dart';
class APICall extends StatefulWidget {
  const APICall({super.key});

  @override
  State<APICall> createState() => _APICallState();
}

class _APICallState extends State<APICall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product from API'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3,
              ),
          itemCount: 20,
          itemBuilder: (context,index){
            return Container(
              child: Column(
                children: [
                  SizedBox(),
                ],
              ),
            );
          },
    ),
    );
  }
}
