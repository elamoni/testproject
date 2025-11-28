import 'package:flutter/material.dart';

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyGridView'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),

          itemCount: 20,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 150,width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black45,
                    blurRadius: 10,
                    offset: Offset(0,9)
                ),
              ]//boxShadow
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Icon(Icons.phone,size: 50,),
              Text('Phone-${index}', style: TextStyle(
                fontSize: 25, color: Colors.white,),) ],
                      )
                  ),
            );

        //////////////////////////////////

    },
        )
    );
  }
}
