import 'package:flutter/material.dart';
import 'package:midterm_630710668/tem_page/converter.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: TemperPage(),
    );
  }
}
