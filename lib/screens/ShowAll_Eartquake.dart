import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:pjearthquake/model/data_model.dart';
import 'package:pjearthquake/screens/home.dart';
import 'package:pjearthquake/utility/my_style.dart';

import '../utility/my_constant.dart';

class ShowAll extends StatefulWidget {
  @override
  _ShowAllState createState() => _ShowAllState();
}

class _ShowAllState extends State<ShowAll> {
  late double lat1, lng1;

  @override
  void initState() {
    super.initState();
    findLatLng();
  }

  Future<Null> findLatLng() async {
    LocationData? locationData = await findLocationData();
    setState(() {
      lat1 = locationData!.latitude!;
      lng1 = locationData.longitude!;
    });
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
      body: Column(
        children: <Widget>[
          // ignore: unnecessary_null_comparison
          lat1 == null ? MyStyle().showProgress() : showMap(),
        ],
      ),
    );
  }

  Container showMap() {
    LatLng latLng1 = LatLng(lat1, lng1);
    CameraPosition position = CameraPosition(
      target: latLng1,
      zoom: 10.0,
    );

    Marker userMarker() {
      return Marker(
        markerId: MarkerId('userMarker'),
        position: LatLng(lat1, lng1),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'You here'),
      );
    }

    Marker kbsMarker() {
      return Marker(
        markerId: MarkerId('1'),
        position: LatLng(78.9154, 11.9385),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KBS'),
      );
    }

    Marker sfjdMarker() {
      return Marker(
        markerId: MarkerId('2'),
        position: LatLng(66.9961,-50.62076),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SFJD'),
      );
    }

    Marker acrgMarker() {
      return Marker(
        markerId: MarkerId('3'),
        position: LatLng(5.641485,-0.207117),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'ACRG'),
      );
    }

    Marker lvcMarker() {
      return Marker(
        markerId: MarkerId('4'),
        position: LatLng(-22.6127,-68.9111),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'LVC'),
      );
    }

      Marker apeMarker() {
      return Marker(
        markerId: MarkerId('5'),
        position: LatLng(37.07274,25.52301),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'APE'),
      );
    }

    Marker arprMarker() {
      return Marker(
        markerId: MarkerId('6'),
        position: LatLng(39.09289,38.33557),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'ARPR'),
      );
    }

    Marker baljMarker() {
      return Marker(
        markerId: MarkerId('7'),
        position: LatLng(32.0873,35.64),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'BALJ'),
      );
    }

    Marker boabMarker() {
      return Marker(
        markerId: MarkerId('8'),
        position: LatLng(12.4493,-85.6659),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'BOAB'),
      );
    }

    Marker cssMarker() {
      return Marker(
        markerId: MarkerId('9'),
        position: LatLng(34.9611,33.331),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'CSS'),
      );
    }

    Marker eilMarker() {
      return Marker(
        markerId: MarkerId('10'),
        position: LatLng(29.6699,34.9512),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'EIL'),
      );
    }

    Marker falksMarker() {
      return Marker(
        markerId: MarkerId('11'),
        position: LatLng(51.6819,11.2655),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'FALKS'),
      );
    }

    Marker flt1Marker() {
      return Marker(
        markerId: MarkerId('12'),
        position: LatLng(52.3306,11.2372),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'FLT1'),
      );
    }

    Marker ghajMarker() {
      return Marker(
        markerId: MarkerId('13'),
        position: LatLng(31.30341,35.56648),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'GHAJ'),
      );
    }

    Marker gvdMarker() {
      return Marker(
        markerId: MarkerId('14'),
        position: LatLng(34.83914,24.08738),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'GVD'),
      );
    }

    Marker hlgMarker() {
      return Marker(
        markerId: MarkerId('15'),
        position: LatLng(54.183092,7.883014),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'HLG'),
      );
    }

    Marker ibbnMarker() {
      return Marker(
        markerId: MarkerId('16'),
        position: LatLng(52.3063,7.7592),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'IBBN'),
      );
    }

    Marker immvMarker() {
      return Marker(
        markerId: MarkerId('17'),
        position: LatLng(35.4606,23.9811),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'IMMV'),
      );
    }

    Marker ispMarker() {
      return Marker(
        markerId: MarkerId('18'),
        position: LatLng(37.8433,30.5093),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'ISP'),
      );
    }

    Marker karpMarker() {
      return Marker(
        markerId: MarkerId('19'),
        position: LatLng(35.5471,27.16106),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KARP'),
      );
    }

    Marker kthaMarker() {
      return Marker(
        markerId: MarkerId('20'),
        position: LatLng(36.2566,23.0621),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KTHA'),
      );
    }

    Marker kbuMarker() {
      return Marker(
        markerId: MarkerId('21'),
        position: LatLng(34.5151,69.1347),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KBU'),
      );
    }

    Marker keraMarker() {
      return Marker(
        markerId: MarkerId('22'),
        position: LatLng(35.3692,23.5577),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KERA'),
      );
    }

    Marker mateMarker() {
      return Marker(
        markerId: MarkerId('23'),
        position: LatLng(40.64907,16.70442),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MATE'),
      );
    }

    Marker morcMarker() {
      return Marker(
        markerId: MarkerId('24'),
        position: LatLng(49.7766,17.5428),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MORC'),
      );
    }

    Marker msbiMarker() {
      return Marker(
        markerId: MarkerId('25'),
        position: LatLng(31.3126,35.358),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MSBI'),
      );
    }

    Marker mteMarker() {
      return Marker(
        markerId: MarkerId('26'),
        position: LatLng(40.3997,-7.5442),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MTE'),
      );
    }

    Marker npwMarker() {
      return Marker(
        markerId: MarkerId('27'),
        position: LatLng(19.7785,96.1376),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'NPW'),
      );
    }

    Marker pabeMarker() {
      return Marker(
        markerId: MarkerId('28'),
        position: LatLng(55.50523,23.96796),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PABE'),
      );
    }

    Marker pburMarker() {
      return Marker(
        markerId: MarkerId('29'),
        position: LatLng(56.02361,21.92945),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PBUR'),
      );
    }

    Marker pulMarker() {
      return Marker(
        markerId: MarkerId('30'),
        position: LatLng(59.767,30.317),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PUL'),
      );
    }

    Marker rngMarker() {
      return Marker(
        markerId: MarkerId('31'),
        position: LatLng(54.5477,13.3214),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'RGN'),
      );
    }

    Marker rueMarker() {
      return Marker(
        markerId: MarkerId('32'),
        position: LatLng(52.4759,13.78),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'RUE'),
      );
    }

    Marker salpMarker() {
      return Marker(
        markerId: MarkerId('33'),
        position: LatLng(32.0686,35.1914),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SALP'),
      );
    }

    Marker saltaMarker() {
      return Marker(
        markerId: MarkerId('34'),
        position: LatLng(-24.2241,-66.34),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SALTA'),
      );
    }

    Marker slitMarker() {
      return Marker(
        markerId: MarkerId('35'),
        position: LatLng(57.6287,22.2905),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SLIT'),
      );
    }

    Marker snaaMarker() {
      return Marker(
        markerId: MarkerId('36'),
        position: LatLng(-71.6707,-2.8379),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SNAA'),
      );
    }

    Marker stuMarker() {
      return Marker(
        markerId: MarkerId('37'),
        position: LatLng(48.7719,9.195),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'STU'),
      );
    }

    Marker tirrMarker() {
      return Marker(
        markerId: MarkerId('38'),
        position: LatLng(44.4581,28.4128),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'TIRR'),
      );
    }

    Marker ujapMarker() {
      return Marker(
        markerId: MarkerId('39'),
        position: LatLng(31.95201,35.46435),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'UJAP'),
      );
    }

    Marker vsuMarker() {
      return Marker(
        markerId: MarkerId('40'),
        position: LatLng(58.462,26.7347),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'VSU'),
      );
    }

    Marker winMarker() {
      return Marker(
        markerId: MarkerId('41'),
        position: LatLng(-22.5691,17.0915),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'WIN'),
      );
    }

    Marker wlfMarker() {
      return Marker(
        markerId: MarkerId('42'),
        position: LatLng(49.6646,6.1526),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'WLF'),
      );
    }

    Marker zkrMarker() {
      return Marker(
        markerId: MarkerId('43'),
        position: LatLng(35.1147,26.21691),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'ZKR'),
      );
    }

    Marker damyMarker() {
      return Marker(
        markerId: MarkerId('44'),
        position: LatLng(14.5725,44.3917),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'DAMY'),
      );
    }

    Marker socyMarker() {
      return Marker(
        markerId: MarkerId('45'),
        position: LatLng(12.51952,53.98742),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SOCY'),
      );
    }

    Marker kibkMarker() {
      return Marker(
        markerId: MarkerId('46'),
        position: LatLng(-2.35907,38.0433),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KIBK'),
      );
    }

    Marker lodkMarker() {
      return Marker(
        markerId: MarkerId('47'),
        position: LatLng(3.42195,35.36165),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'LODK'),
      );
    }

    Marker sbvMarker() {
      return Marker(
        markerId: MarkerId('48'),
        position: LatLng(-13.4584,49.9212),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SBV'),
      );
    }

    Marker voiMarker() {
      return Marker(
        markerId: MarkerId('49'),
        position: LatLng(-21.90648,46.79327),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'VOI'),
      );
    }

    Marker hmdmMarker() {
      return Marker(
        markerId: MarkerId('50'),
        position: LatLng(6.77314,73.18216),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'HMDM'),
      );
    }

    Marker kaamarker() {
      return Marker(
        markerId: MarkerId('51'),
        position: LatLng(0.49264,72.99486),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KAAM'),
      );
    }

    Marker malkMarker() {
      return Marker(
        markerId: MarkerId('52'),
        position: LatLng(8.39682,80.54254),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MALK'),
      );
    }

    Marker halkMarker() {
      return Marker(
        markerId: MarkerId('53'),
        position: LatLng(6.0877,80.6806),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'HALK'),
      );
    }

    Marker bbjiMarker() {
      return Marker(
        markerId: MarkerId('54'),
        position: LatLng(-7.462603,107.65),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'BBJI'),
      );
    }

    Marker bkbMarker() {
      return Marker(
        markerId: MarkerId('55'),
        position: LatLng(-1.1073,116.9048),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'BKB'),
      );
    }

    Marker bkniMarker() {
      return Marker(
        markerId: MarkerId('56'),
        position: LatLng(0.3262,101.0396),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'BKNI'),
      );
    }

    Marker bndiMarker() {
      return Marker(
        markerId: MarkerId('57'),
        position: LatLng(-4.5224,129.9045),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'BNDI'),
      );
    }

    Marker fakiMarker() {
      return Marker(
        markerId: MarkerId('58'),
        position: LatLng(-2.91925,132.24889),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'FAKI'),
      );
    }

    Marker geniMarker() {
      return Marker(
        markerId: MarkerId('59'),
        position: LatLng(-2.5927,140.1678),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'GENI'),
      );
    }

    Marker gsiMarker() {
      return Marker(
        markerId: MarkerId('60'),
        position: LatLng(1.3039,97.5755),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'GSI'),
      );
    }

    Marker jagiMarker() {
      return Marker(
        markerId: MarkerId('61'),
        position: LatLng(-8.4702,114.1521),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'JAGI'),
      );
    }

    Marker lhmiMarker() {
      return Marker(
        markerId: MarkerId('62'),
        position: LatLng(5.2288,96.9472),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'LHMI'),
      );
    }

    Marker luwiMarker() {
      return Marker(
        markerId: MarkerId('63'),
        position: LatLng(-1.0418,122.7717),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'LUWI'),
      );
    }

    Marker mmriMarker() {
      return Marker(
        markerId: MarkerId('64'),
        position: LatLng(-8.6357,122.2376),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MMRI'),
      );
    }

    Marker mnaiMarker() {
      return Marker(
        markerId: MarkerId('65'),
        position: LatLng(-4.3605,102.9557),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MNAI'),
      );
    }

    Marker plaiMarker() {
      return Marker(
        markerId: MarkerId('66'),
        position: LatLng(-8.8275,117.7765),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PLAI'),
      );
    }

    Marker pmbiMarker() {
      return Marker(
        markerId: MarkerId('67'),
        position: LatLng(-2.9024,104.6993),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PMBI'),
      );
    }

    Marker saniMarker() {
      return Marker(
        markerId: MarkerId('68'),
        position: LatLng(-2.0496,125.9881),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SANI'),
      );
    }

    Marker sauiMarker() {
      return Marker(
        markerId: MarkerId('69'),
        position: LatLng(-7.9826,131.2988),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SAUI'),
      );
    }

    Marker smriMarker() {
      return Marker(
        markerId: MarkerId('70'),
        position: LatLng(-7.04915,110.44067),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SMRI'),
      );
    }

    Marker soeiMarker() {
      return Marker(
        markerId: MarkerId('71'),
        position: LatLng(-9.7553,124.2672),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SOEI'),
      );
    }

    Marker tntiMarker() {
      return Marker(
        markerId: MarkerId('72'),
        position: LatLng(0.7718,127.3667),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'TNTI'),
      );
    }

    Marker toli2Marker() {
      return Marker(
        markerId: MarkerId('73'),
        position: LatLng(1.11119,120.78174),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'TOLI2'),
      );
    }

    Marker ugmMarker() {
      return Marker(
        markerId: MarkerId('74'),
        position: LatLng(-7.9125,110.5231),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'UGM'),
      );
    }

    Marker pmgMarker() {
      return Marker(
        markerId: MarkerId('75'),
        position: LatLng(-9.4047,147.1597),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PMG'),
      );
    }

    Marker kmboMarker() {
      return Marker(
        markerId: MarkerId('76'),
        position: LatLng(-1.1271,37.2525),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'KMBO'),
      );
    }

    Marker ilthMarker() {
      return Marker(
        markerId: MarkerId('77'),
        position: LatLng(54.0279,-6.3362),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'ILTH'),
      );
    }

    Marker dsbMarker() {
      return Marker(
        markerId: MarkerId('78'),
        position: LatLng(53.2452,-6.3762),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'DSB'),
      );
    }

    Marker marcoMarker() {
      return Marker(
        markerId: MarkerId('79'),
        position: LatLng(40.29724,15.80632),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'MARCO'),
      );
    }

    Marker sumgMarker() {
      return Marker(
        markerId: MarkerId('80'),
        position: LatLng(72.57433,-38.46244),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'SUMG'),
      );
    }

    Marker theraMarker() {
      return Marker(
        markerId: MarkerId('81'),
        position: LatLng(36.366992,25.475263),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'THERA'),
      );
    }

    Marker valMarker() {
      return Marker(
        markerId: MarkerId('82'),
        position: LatLng(51.9394,-10.2442),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'VAL'),
      );
    }

    Marker pszMarker() {
      return Marker(
        markerId: MarkerId('83'),
        position: LatLng(47.91840001,19.89440001),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'PSZ'),
      );
    }



    Set<Marker> mySet() {
      return <Marker>[userMarker(),kbsMarker(),sfjdMarker(),
      acrgMarker(),lvcMarker(),apeMarker(),arprMarker(),
      baljMarker(),boabMarker(),cssMarker(),eilMarker(),
      falksMarker(),flt1Marker(),ghajMarker(),gvdMarker(),hlgMarker(),
      ibbnMarker(),immvMarker(),ispMarker(),karpMarker(),kthaMarker(),
      kbuMarker(),keraMarker(),mateMarker(),morcMarker(),msbiMarker(),
      mteMarker(),npwMarker(),pabeMarker(),pburMarker(),pulMarker(),
      rngMarker(),rueMarker(),salpMarker(),saltaMarker(),slitMarker(),
      snaaMarker(),stuMarker(),tirrMarker(),ujapMarker(),vsuMarker(),
      winMarker(),wlfMarker(),zkrMarker(),damyMarker(),socyMarker(),
      kibkMarker(),lodkMarker(),sbvMarker(),voiMarker(),hmdmMarker(),
      kaamarker(),malkMarker(),halkMarker(),bbjiMarker(),bkbMarker(),
      bkniMarker(),bndiMarker(),fakiMarker(),geniMarker(),gsiMarker(),
      jagiMarker(),lhmiMarker(),luwiMarker(),mmriMarker(),mnaiMarker(),
      plaiMarker(),pmbiMarker(),saniMarker(),sauiMarker(),smriMarker(),
      soeiMarker(),tntiMarker(),toli2Marker(),ugmMarker(),pmgMarker(),
      kmboMarker(),ilthMarker(),dsbMarker(),marcoMarker(),sumgMarker(),
      theraMarker(),valMarker(),pszMarker()
      ].toSet();
    }

    return Container(
      height: 547.4,
      child: lat1 == null
          ? MyStyle().showProgress()
          : GoogleMap(
              initialCameraPosition: position,
              mapType: MapType.normal,
              onMapCreated: (controller) {},
              markers: mySet(),
              myLocationEnabled: true,
            ),
    );
  }
}
