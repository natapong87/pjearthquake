import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:pjearthquake/screens/home.dart';
import 'package:pjearthquake/utility/my_style.dart';

class ShowAll extends StatefulWidget {
  @override
  _ShowAllState createState() => _ShowAllState();
}

class _ShowAllState extends State<ShowAll> {

  //Field
  late double lat,lng;

  @override
  void initState() {
    super.initState();
    findLatLng();
  }

  Future<Null> findLatLng() async {
    LocationData? locationData = await findLocationData();
    setState(() {
      lat = locationData!.latitude!;
      lng = locationData.longitude!;
    });
  }

  Future<LocationData?> findLocationData()async{
    Location location = Location();
    try {
      return location.getLocation();
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eartquake alert'),  
      ),
      body: Column(
        children: <Widget>[
          // ignore: unnecessary_null_comparison
        lat == null ? MyStyle().showProgress(): showMap(),    
        ],
      ),
    );
  }

  Container showMap() {
    LatLng latLng = LatLng(lat, lng);
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 6.0,
    );

    return Container(
      height: 547.4, //547.4
      child: GoogleMap(
        initialCameraPosition: cameraPosition,
        mapType: MapType.normal,
        onMapCreated: (controller) {},
        myLocationEnabled: true,
      ),
    );
  }
}
