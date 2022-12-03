import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:location/location.dart';

class locationEn extends StatefulWidget {
  const locationEn({super.key});

  @override
  State<locationEn> createState() => _locationEnState();
}

class _locationEnState extends State<locationEn> {
  Location location = new Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;
  bool _isListenlocation = false, _isGetLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("enable"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                _serviceEnabled = await location.serviceEnabled();
                if (!_serviceEnabled) {
                  _serviceEnabled = await location.requestService();
                  if (_serviceEnabled) {
                    return;
                  }
                }
                _permissionGranted = await location.hasPermission();
                if (_permissionGranted == PermissionStatus.denied) {
                  _permissionGranted = await location.requestPermission();
                  if (_permissionGranted != PermissionStatus.granted) {
                    return;
                  }
                  _locationData = await location.getLocation();
                  setState(() {
                    _isGetLocation = true;
                  });
                }
              },
              child: const Text("Get Location"),
            ),
            _isGetLocation
                ? Text(
                    "location: ${_locationData.latitude}/${_locationData.longitude}")
                : Container(),
            ElevatedButton(
              onPressed: null,
              child: const Text("Listen Location"),
            ),
          ],
        ),
      ),
    );
  }
}
