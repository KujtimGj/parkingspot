import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _prishtinaCity = CameraPosition(
      target: LatLng(42.65962312753247, 21.160656884104476),
      zoom: 17.4746,
      bearing: 200);

  static const CameraPosition _cacttus = CameraPosition(
      bearing: 200,
      target: LatLng(42.657041639103795, 21.147962432322927),
      zoom: 19.151926040649414,
      tilt: 5);
  static const Marker _parkingMarker = Marker(
      markerId: MarkerId("parkingMarker"),
      infoWindow: InfoWindow(title: "parkingMark"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(42.659962, 21.160735));

  // Set<Marker> _markers = {};
  // BitmapDescriptor? mapMarker;

  // @override
  // void initState() {
  //   super.initState();
  // }

  // void setCustomMarker() async {
  //   mapMarker = await BitmapDescriptor.fromAssetImage(
  //       ImageConfiguration(), "assets/markers/marker-1.png");
  // }

  // void onMapCreated(GoogleMapController controller){
  //   setState(() {
  //     _markers.add(
  //       Marker(
  //         markerId: MarkerId('id-1'),
  //         position: LatLng(42.657041639103795, 21.147962432322927),
  //         icon: mapMarker,
  //         infoWindow: InfoWindow(
  //           title: 'ASD',
  //           snippet: 'A historical place'
  //         )
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          mapToolbarEnabled:true,
          zoomControlsEnabled: false,
          markers: {
            _parkingMarker,
          },
          mapType: MapType.normal,
          initialCameraPosition: _prishtinaCity,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onHorizontalDragStart: (){},
              child: Container(
                margin: const EdgeInsets.all(10),
                height: size.height * 0.15,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: size.height * 0.15,
                      width: size.width * 0.9, 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
            ))
      ]),
     
    );
  }

//   Future<void> _goToCacttus() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_cacttus));
//   }
}