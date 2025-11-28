import 'package:flutter/material.dart';

class AppTheme{
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    ///////////
            primaryColor: Colors.deepOrangeAccent,
      primarySwatch:Colors.orange,
      useMaterial3: false,  // << important
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          )
      ),//
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ),//enabledBorder
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.orange, width: 2)
          ) ,//focusedBorder

          hintStyle: TextStyle(
              color: Colors.white
          )
      ),
      textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 16, fontWeight:FontWeight.bold
          )
      )
    ////////////
  );

  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      ///////////
      primaryColor: Colors.blue,
      primarySwatch:Colors.orange,
      useMaterial3: false,  // << important
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          )
      ),//
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ),//enabledBorder
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.orange, width: 2)
          ) ,//focusedBorder

          hintStyle: TextStyle(
              color: Colors.white
          )
      ),
      textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 16, fontWeight:FontWeight.bold
          )
      )
    ////////////
  );


}