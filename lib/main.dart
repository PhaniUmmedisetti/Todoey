import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy/models/task_data.dart';
import 'package:udemy/screens/task_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => TaskData(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      )
    );
  }
}
