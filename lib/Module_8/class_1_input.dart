import 'package:flutter/material.dart';
//import 'package:testproject/main.dart';


class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Input'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.abc),
                suffixIcon: Icon(Icons.mail),
                hintText: 'Enter your mail',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.cyan),
                ),//
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green),
                ),
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  ),
                helperText: 'aesmot@gmail.com',
                  helperStyle: TextStyle(
                  color: Colors.blue),
                labelText: 'your own mail',
                  labelStyle: TextStyle(
                      color: Colors.orange,
                      fontSize: 15
                  ),

              ),
            ),
          ),//main textfield


//////////////// 2nd input////////////
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              maxLength: 11,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: 'Enter your Phone Number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ), 
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.cyan),
                ),//
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green),
                ),
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
                helperText: 'aesmot@gmail.com',
                helperStyle: TextStyle(
                    color: Colors.blue),
                labelText: 'your own mail',
                labelStyle: TextStyle(
                    color: Colors.orange,
                    fontSize: 15
                ),

              ),
            ),
          ),//main textfield
         // SizedBox(height: 20,),
          SizedBox( width: 200,
          child:  ElevatedButton(onPressed: (){}, child: Text('Login')),

          ),

        ],//children

      ),
    );
  }
}
