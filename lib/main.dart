import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/login_page.dart';

Future<void> main() async {

  await Hive.initFlutter();
  
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.lightBlue[50],
        appBarTheme: AppBarTheme(color:Colors.lightBlue[50]),
      ),
    );
  }
}
