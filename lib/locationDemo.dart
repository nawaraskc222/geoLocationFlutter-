// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
// import 'package:location_example/change_settings.dart';
// import 'package:location_example/enable_in_background.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'package:gpsproject/change_notification.dart';
// import 'get_location.dart';
// import 'listen_location.dart';
// import 'package:gpsproject/permission_status.dart';
// import 'package:gpsproject/service_enabled.dart';

// class locationDemo extends StatefulWidget {
//   const locationDemo({super.key});

//   // const locationDemo({super.key});

//   @override
//   State<locationDemo> createState() => _locationDemoState();
// }

// class _locationDemoState extends State<locationDemo> {
//   final Location location = Location();
//   @override
//   Future<void> _showInfoDialog() {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Demo Application'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 const Text('Created by Guillaume Bernos'),
//                 InkWell(
//                   child: const Text(
//                     'https://github.com/Lyokone/flutterlocation',
//                     style: TextStyle(
//                       decoration: TextDecoration.underline,
//                     ),
//                   ),
//                   onTap: () =>
//                       launch('https://github.com/Lyokone/flutterlocation'),
//                 ),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('Ok'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("location"),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.info_outline),
//             onPressed: _showInfoDialog,
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(32),
//           child: Column(
//             children: const <Widget>[
//               PermissionStatusWidget(),
//               Divider(height: 32),
//               ServiceEnabledWidget(),
//               Divider(height: 32),
//               GetLocationWidget(),
//               Divider(height: 32),
//               ListenLocationWidget(),
//               Divider(height: 32),
//               ChangeSettings(),
//               Divider(height: 32),
//               EnableInBackgroundWidget(),
//               Divider(height: 32),
//               ChangeNotificationWidget()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
