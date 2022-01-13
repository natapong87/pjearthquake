import 'package:flutter/material.dart';
import 'package:pjearthquake/screens/information_eartquake.dart';
import 'package:pjearthquake/utility/my_style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eartquake alert'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
          MyStyle().EmptyBox(),
          DataBox(),
        ]),
      ),
    );
  }
}

Widget DataBox() {
  return GestureDetector(
      onTap: () {
        print('1');
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => informationEQ(),
        );
        //Navigator.push(context,route);
      },
      child: Column(children: [
        Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              border: Border.all(width: 0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
            ))
      ]));
}
