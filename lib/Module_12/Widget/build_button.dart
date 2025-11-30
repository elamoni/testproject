import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.grey,
        ),
        onPressed: (){}, child: Text('C',
      style: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
    )
    );
  }
}