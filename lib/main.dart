import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:pjearthquake/screens/ShowAll_Eartquake.dart';
import 'package:pjearthquake/screens/main_screen.dart';

void main() async{
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(MyApp());
}

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
