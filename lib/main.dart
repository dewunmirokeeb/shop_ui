import 'package:flutter/material.dart';

import 'screens/home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop ui made with flutter',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          textTheme: const TextTheme(
              bodyText2: TextStyle(
            color: Colors.black54,
          ))),
      home: const HomeScreen(),
    );
  }
}
