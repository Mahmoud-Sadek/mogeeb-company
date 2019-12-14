import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapWidegt extends StatefulWidget {
  static LatLng currentLatLng = LatLng(30.0544925,31.2821565);
  TextEditingController locationController;
  MapWidegt(this.locationController);

  @override
  _MapWidegtState createState() => _MapWidegtState(locationController);
}

class _MapWidegtState extends State<MapWidegt> {
  TextEditingController locationController;

  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _kGooglePlex ;

  List<Marker>mMarker=[];

  _MapWidegtState(this.locationController);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _kGooglePlex =  CameraPosition(
      target: MapWidegt.currentLatLng,
      zoom: 14.4746,
    );
    mMarker.add(
        Marker(
          markerId: MarkerId('1'),
          position: LatLng(30.0544925,31.2821565),
        )
    );
  }
  Future _addMarkerLongPressed(LatLng latlang) async {
    setState(() async {
      MapWidegt.currentLatLng = latlang;
      final MarkerId markerId = MarkerId(  Random().toString());
      Marker marker = Marker(
        markerId: markerId,
        draggable: true,
        position: latlang,
        //With this parameter you automatically obtain latitude and longitude
        infoWindow: InfoWindow(
          title: "Marker here",
          snippet: 'its your location',
        ),
        icon: BitmapDescriptor.defaultMarker,
      );

      mMarker.clear();
      mMarker.add(marker);
      final coordinates = new Coordinates(latlang.latitude, latlang.longitude);
      var  addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
      var first = addresses.first;
      print("${first.featureName} : ${first.addressLine}");
      setState(() {

        locationController.text = first.addressLine;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2,

        child: GoogleMap(gestureRecognizers: Set()
          ..add(
              Factory<PanGestureRecognizer>(() => PanGestureRecognizer()))
          ..add(
            Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer()),
          )
          ..add(
            Factory<HorizontalDragGestureRecognizer>(
                    () => HorizontalDragGestureRecognizer()),
          )
          ..add(
            Factory<ScaleGestureRecognizer>(
                    () => ScaleGestureRecognizer()),
          ),
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          zoomGesturesEnabled: true,
          scrollGesturesEnabled: true,
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onTap: (latlang) {
            _addMarkerLongPressed(latlang); //we will call this function when pressed on the map
          },onLongPress: (latlang) {
            _addMarkerLongPressed(latlang); //we will call this function when pressed on the map
          },
          markers: mMarker.toSet(),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }

}
