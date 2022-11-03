import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:pjearthquake/model/data_model.dart';
import 'package:pjearthquake/screens/information_eartquake.dart';
import 'package:pjearthquake/utility/my_constant.dart';
import 'package:pjearthquake/utility/my_style.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
//List productList =[];
//   @override
// void initState() {
//   super.initState();
//   productList = [];
// }

  // Future getContactData() async {
  //   // String url = '${MyConstant().domain}/pjearthquake-master/mySQL/insertData.php';
  //   // try{
  //   //     Response response = await Dio().get(url);
  //   // }catch(e){

  //   // }
    // var response = await http.get(Uri.parse("${MyConstant().domain}/pjearthquake-master/mySQL/Data.php"));
    // if (response.statusCode == 200) {
    //   setState(() {
    //     productList = json.decode(response.body);
    //   });
    //   print(productList);
    //   return productList;
    // }
  //}

  late DataModel dataModel;
  @override
  void initState(){
    super.initState();
    readData();
  }

   Future readData()async{
    String url = '${MyConstant().domain}/pjearthquake-master/mySQL/getAllData.php';
    await Dio().get(url).then((value) {
      print('value = $value');
      var result = json.decode(value.data);
     for (var map in result) {
       dataModel = DataModel.fromJson(map);
        print('station = ${DataModel().pickID}');
       }
      
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eartquake alert'),
      ),
      //drawer: Drawer(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: FittedBox(
                  //child: Text('WMC'),
                  child: Text('${DataModel().waveformIDStationCode}'),
                ),
              ),
            title: Text('${DataModel().amplitudeValue}'),
              //title: Text('123'),
              subtitle: Text('${DataModel().sLastModified}'),
            ),
          );
        },
      ),
    );
  }
}
