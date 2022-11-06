import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pjearthquake/model/data_model.dart';
import 'package:pjearthquake/utility/my_constant.dart';
import 'package:pjearthquake/utility/my_style.dart';
//import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //late DataModel dataModel;
  DataModel dataModel = DataModel();
  List<DataModel> dataModels = [];
  var outputFormat = DateFormat('MM/dd/yyyy hh:mm a');

  @override
  void initState() {
    super.initState();
    readData();
  }

  Future<Null> readData() async {
    String url =
        '${MyConstant().domain}/pjearthquake-master/mySQL/getAllData.php'; //เชื่อมฐานข้อมูล
    await Dio().get(url).then((value) {
      //print('value = $value');
      var result = json.decode(value.data);
      for (var map in result) {
        DataModel dataModel = DataModel.fromJson(map); //แปลง Json to dart
        setState(() {
          dataModels.add(dataModel);
        });
        //print('station = ${dataModel.waveformIDStationCode}');
      }
      //return dataModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eartquake alert'),
      ),
      body: ListView.builder(
        //itemCount: 10, //จำนวนข้อมูลที่เอามาแสดง
        itemBuilder: (context, index) {
          return dataModels.length == 0
              ? MyStyle().showProgress()
              : ListView.builder(itemCount: dataModels.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => 
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FittedBox(
                          child: Text(dataModels[index].waveformIDStationCode!),
                        ),
                      ),
                      title: Text(dataModels[index].amplitudeValue!),
                      subtitle: Text(dataModels[index].sLastModified!),
                    ),
                  ),
                );
          // Card(
          //   elevation: 5,
          //   margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          //   child: ListTile(
          //     leading: CircleAvatar(
          //       radius: 30,
          //       child: FittedBox(
          //         //child: Text(dataModels[index].waveformIDStationCode),
          //         child: Text('${dataModel.waveformIDStationCode}'),
          //       ),
          //     ),
          //     title: Text('${dataModel.amplitudeValue}'),
          //     subtitle: Text('${dataModel.sLastModified}'),
          //   ),
          // );
        },
      ),
    );
  }
}
