// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

// class AskForPermission extends StatefulWidget {
//   const AskForPermission({super.key});

//   @override
//   State<AskForPermission> createState() => _AskForPermissionState();
// }

// class _AskForPermissionState extends State<AskForPermission> {
//   final geolocator =
//       Geolocator.getCurrentPosition(forceAndroidLocationManager: true);

//   late Position _currentPosition;
//   String currentAddress = "";
//   void getCurrentlocation() {
//     Geolocator.getCurrentPosition(
//             desiredAccuracy: LocationAccuracy.bestForNavigation,
//             forceAndroidLocationManager: true)
//         .then((Position position) {
//       setState(() {
//         _currentPosition = position;
//       });
//       getAddressFromLatLang();
//     }).catchError((e) {
//       print("$e");
//     });
//   }

//   void getAddressFromLatLang() async {
//     try {
//       List<Placemark> p = await placemarkFromCoordinates(
//           _currentPosition.latitude, _currentPosition.longitude);
//       Placemark place = p[0];
//       setState(() {
//         currentAddress =
//             "${place.thoroughfare},${place.subThoroughfare},${place.name},${place.subLocality}";
//       });
//     } catch (e) {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Enable Location"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Theme.of(context).canvasColor,
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           ),
//           Column(
//             children: [
//               ElevatedButton(
//                   onPressed: getCurrentlocation,
//                   child: const Text("Get location")),
//               if (_currentPosition != null && currentAddress != null)
//                 Text(
//                   currentAddress,
//                 )
//               else
//                 const Text("could not fetch location")
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
