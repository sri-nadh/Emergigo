import 'dart:async';
import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/details/Medical_Detail.dart';
import 'package:emergigo/widgets_common/com_button.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {

  final Completer<GoogleMapController> _controller=Completer();

static const CameraPosition _intialPosition = CameraPosition (
  target :  LatLng(9.054736, 76.535358),
  zoom: 14
);

final List<Marker> myMarker= [];
final List<Marker> markerList = const [
  Marker(markerId: MarkerId('First'),
  position: LatLng(9.054736, 76.535358),
  infoWindow: InfoWindow(
    title: 'My Position',
  ),
  ),
];

void initState(){
  super.initState();
  myMarker.addAll(markerList);
}

Future<Position> getUserLocation() async
{
  await Geolocator.requestPermission().then((value){

  }).onError((error, stackTrace)
  {
    print('error$error');
  });

  return await Geolocator.getCurrentPosition();
}

packData()
{
  getUserLocation().then((value)
  async{
    print('My Location');
    print('${value.latitude} ${value.longitude}');

    myMarker.add(
      Marker(
        markerId: const MarkerId('Second'),
        position: LatLng(value.latitude, value.longitude),
        infoWindow: const InfoWindow(
          title: 'My Location',
        )
        )
    );
    CameraPosition cameraPosition= CameraPosition(
      target: LatLng(value.latitude, value.longitude),
      zoom: 17,
      );
    
    final GoogleMapController controller =await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    setState(() {
      
    });
  });
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: GoogleMap(initialCameraPosition: _intialPosition,
        mapType: MapType.normal,
        markers: Set<Marker>.of(myMarker),
        onMapCreated: (GoogleMapController controller)
        {
          _controller.complete(controller);
        }

        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
        packData();
          Future.delayed(const Duration(seconds: 10),(){
                Get.to(()=> const MedicalDetail());
            });
        
          
        },
        child: const Icon(Icons.radio_button_off),
        ),

        

    );

}
}