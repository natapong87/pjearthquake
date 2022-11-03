import 'package:flutter/material.dart';

class MyStyle {
  
  Widget showProgress() {
    return Center(child: CircularProgressIndicator(),);
  }

  // Container DataBox(){
  //   return Container(
  //           height: 100,
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(20),
  //                     topRight: Radius.circular(20),
  //                     bottomLeft: Radius.circular(20),
  //                     bottomRight: Radius.circular(20)),
  //                     border: Border.all(width: 0.5),
  //                     boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey.withOpacity(0.5),
  //                     spreadRadius: 5,
  //                     blurRadius: 7,
  //                     offset: Offset(0, 3),
  //                   )
  //                 ], 
  //             )
  //           );
  // }
  
  Container EmptyBox(){
    return Container(
      height: 7,
    );
  }

  MyStyle();
}
