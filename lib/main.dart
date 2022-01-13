import 'package:flutter/material.dart';
import 'package:pjearthquake/screens/all.dart';
import 'package:pjearthquake/screens/information_eartquake.dart';
import 'package:pjearthquake/screens/main_screen.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eartquake alert',
      home: MainScreen(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
