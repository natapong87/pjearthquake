import 'package:flutter/material.dart';


class SettingApp extends StatefulWidget {
  const SettingApp({ Key? key }) : super(key: key);

  @override
  _SettingAppState createState() => _SettingAppState();
}

class _SettingAppState extends State<SettingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eartquake alert'),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.deepOrangeAccent),
            height: 547.4,
          )
        ],
      ),
    );
  }
}