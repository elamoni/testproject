import 'package:flutter/material.dart';
class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeTest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test Text',
            style: Theme.of(context).textTheme.displayLarge,
        ),
            SizedBox(height: 10,),
        TextField(),
            SizedBox(height: 10,),
        TextField(),
            SizedBox(height: 10,),
        ElevatedButton(onPressed: (){},
            child: Text('Test Button'))

            //Text('Test my Theme data'),
           // SizedBox(height: 20,),
            //TextFormField(),
            //TextField(),

          ],
        ),
      ),
    );
  }
}
