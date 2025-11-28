import 'package:flutter/material.dart';
import 'package:testproject/Module_9/widget/city_card.dart';

class Class2Stack extends StatelessWidget {
  const Class2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CityCard(img: "https://images.unsplash.com/photo-1505761671935-60b3a7427bad?w=200", title: 'London',rating: '4.5',),
            SizedBox(height: 10,),
            Stack(
              children: [
                CircleAvatar(
                radius: 70,
                backgroundImage:NetworkImage('')
            ),

                Container(
                  color:Colors.red,
                  height: 170,
                    width: 200,
                ),

                Container(
                  color:Colors.green,
                  height: 150,
                  width: 180,
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  child: Container(
                    color:Colors.purple,
                    height: 100,
                    width: 150,
                  ),
                )
              ],
            ),//STACK

            SizedBox(height: 10,),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage:NetworkImage
                    ('https://images.unsplash.com/photo-1500648767791-00dcc994a43e',)
                ),
                
                Positioned(
                  bottom: 15,
                  right: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color:Colors.white, width: 1)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


