import 'package:flutter/material.dart';

import 'example.dart';

class LifeCycle extends StatefulWidget {
  LifeCycle({super.key}){
    print('1 Constructor');
  }

  @override
  State<LifeCycle> createState(){
    print('2 create state');
    return _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> {
  String name = 'Demo';
  Color bgColor = Colors.red;
  @override
  void initState() {

    print('3 initState');
    bgColor = Colors.green;
    name = 'Taufiq';
    super.initState();
  }

  @override
  void didChangeDependencies() {

    print('4 didChangeDependencies');
    bgColor = Colors.purple;
    name = 'Sabbir';
    super.didChangeDependencies();
  }

  @override
  void deactivate() {

    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {

    print(dispose);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Example()));
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: bgColor
                ),
                child: Center(
                  child: Text('hello this is $name', style: TextStyle(
                      fontSize: 30
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}