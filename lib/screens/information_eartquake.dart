import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pjearthquake/utility/my_style.dart';
import 'package:location/location.dart';

class informationEQ extends StatefulWidget {
  @override
  _informationEQState createState() => _informationEQState();
}

class _informationEQState extends State<informationEQ> {
  late double lat, lng;

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
    print('lat = $lat, lng = $lng');
  }

  Future<LocationData?> findLocationData() async {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            lat == null ? MyStyle().showProgress() : showmap(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                margin: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  //border: Border.all(width: 0.5),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //children: <Widget>
                  
                  children: [
                    
                    Text(
                      "ประเทศเมียนมา",
                      style: TextStyle(fontSize: 25),
                    ),

                    Date(), Time(),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Expanded(child: Text("12345")),
                        //Icon(Icons.date_range),
                        // Text(
                        //   "13-01-2022",
                        //   style: TextStyle(fontSize: 20),
                          
                        // ),
                      
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile Date() {
    return ListTile(
      horizontalTitleGap: -10,
      leading: Icon(Icons.date_range),
      title: Text("13-01-2022"),
      
    );
  }

  ListTile Time() {
    return ListTile(
      horizontalTitleGap: -10,
      leading: Icon(Icons.access_time),
      title: Text("21:34:30"),
    );
  }

  Container showmap() {
    LatLng latLng = LatLng(lat, lng);
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 5.0,
    );

    return Container(
      height: 350.0,
      child: GoogleMap(
        initialCameraPosition: cameraPosition,
        mapType: MapType.none,
        onMapCreated: (controller) {},
        //markers: myMarker(),
        myLocationEnabled: true,
      ),
    );
  }
}
