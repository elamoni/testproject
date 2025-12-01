import 'package:flutter/material.dart';
import 'package:testproject/Module_8/dashboard.dart';
import 'package:testproject/Module_9/class_2_stack.dart';
import 'package:testproject/Module_9/class_3.dart';
import 'package:testproject/Module_9/theme_test.dart';
import 'package:testproject/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import 'Module_11/class_2.dart';
import 'Module_11/class_3.dart';
import 'Module_11/res.dart';
import 'Module_11/todo.dart';
import 'Module_12/calculator.dart';
import 'Module_12/class_1.dart';
import 'Module_13/class_2.dart';
import 'Module_8/class_1_input.dart';
import 'Module_8/class_2.dart';
import 'Module_8/grid_v.dart';
import 'Module_9/app_theme.dart';
import 'Module_9/class_2.dart';
//import 'package:testproject/home.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.light,
            title: 'Batch-13',
            home: APICall(),
            initialRoute: 'APICall',
            routes: {
              'home': (context) => Home(),
             // 'btns': (context) => Buttongrp(),
              'login': (context) => LoginPage(),
              //'Dashboard': (context) => Dashboard(),
              'list': (context) => FList(),
              'Stack': (context) => Class2Stack(),
              'widget': (context) => OwnWidget(),
              'res': (context) => Res(),
              'res_pakg': (context) => ResPKG(),
              'Class3': (context) => Class3(),
              'Todo': (context) => Todo(),
              'StateClass': (context) => StateClass(),
              'Calculator': (context) => Calculator(),
              'APICall': (context) => APICall(),

            },
          );
        });
  }
}