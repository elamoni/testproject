import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'home_2.dart';
import '../home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),//Appbar

      body: Column(
        children: [
          Image.asset('assets/yt.png',
          height: 100,
          width: 150,),
          //Image.asset('assets/human.png',),
          Text('Login with Phone Number and Password'),
          SizedBox(height: 20),
          Form(
            key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text('Phone Number'),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(

                        )
                      ),
                      validator: (value){
                        if (value==null || value.isEmpty)
                        {
                          return 'Pls Enter Phone Number';
                        }
                        else if(value.length!=11){
                          return 'Pls Enter 11digit';
                        }
                        else
                        {
                          return null;
                        }

                      },

                    ),

                    SizedBox(height: 20),
                   // Text('Password'),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(

                          )
                      ),

                      validator: (value){
                        if (value==null || value.isEmpty)
                        {
                          return 'Pls Enter Password';
                        }
                        else if (value.length<=7){
                          return 'Password must be 8 charachter';
                        }
                        else
                        {
                          return null;
                        }

                      },


                    ),
                  SizedBox(height: 20),
                    SizedBox(height: 35,width: 300,
                    child: ElevatedButton(onPressed: (){
                      if(_formkey.currentState!.validate()){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context)=>Home()));
                        //ScaffoldMessenger.of(context).showSnackBar(
                          //SnackBar(content: Text('Login Successfull'))
                       // );

                      }//bracket
                    },
                        child: Text('Submit'))),
                    /*Navigator Name
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, 'btns');
                    }, child:Text  ('BTNS')),*/
                    //ei page ta module 7er jeta amar kase nei
                    SizedBox(height: 50),
                    ElevatedButton(onPressed: (){
                      Navigator.pushReplacementNamed(context,'home');
                    }, child: Text ('home')),

                    SizedBox(height: 20),
                    SizedBox(height: 35,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeTwo()));
                      }, child: Text('home')),
                    ),


                    SizedBox(height: 20),
                    SizedBox(height: 35,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeTwo()));
                    }, child: Text('home2')),

                    ),

//jjjjjjjjjjjjj
                    SizedBox(height: 20),
                    SizedBox(height: 35,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=>Dashboard(phone: phoneController.text)));
                      }, child: Text('Dashboard')),

                    ),
                  


                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
