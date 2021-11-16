// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'src/location.dart' as location;
//NOW NOT USED

class GetMaps extends StatefulWidget {
  const GetMaps({Key? key}) : super(key: key);

  @override
  _GetMapsState createState() => _GetMapsState();
}

class _GetMapsState extends State<GetMaps> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await location.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(0, 0),
        zoom: 2,
      ),
      markers: _markers.values.toSet(),
    );
  }
}
