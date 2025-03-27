// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';


// class OrderTracker extends StatefulWidget {
  

//   @override
//   _OrderTrackerstate createState() => _OrderTrackerstate();
//   }

// class _OrderTrackerstate extends State<OrderTracker> {
//   LatLng _initialCameraPosition = LatLng(6.4433, 3.3915);
//   GoogleMapController? _mapController;
//   Set<Marker> _markers = {};


//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//     _addMarker(LatLng(10.5228, 7.4394), "Delivery Location");
//   }
//   Future<void> _getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//         setState(() {
//           _initialCameraPosition = LatLng (position.latitude, position.longitude);
//           _addMarker(LatLng(position.latitude, position.longitude), "Your Location");
//         });
//         void _addMarker(LatLng position, String title) {
//           _markers.add(Marker(
//             markerId: MarkerId(title),
//             position: position,
//             infoWindow: InfoWindow(title: title)
//             ));
//         }
//         @override
//         Widget Build(BuildContext context) {
//           return Scaffold(
//             appBar: AppBar(title: Text('Order Tracking')),
//             body: GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: _initialCameraPosition,
//                 zoom: 15,
//               ),
//               onMapCreated: (GoogleMapController controller) {
//                 _mapController = controller;
//               },
//               markers: _markers,
//               ),
//           );
          
//         }
//     }
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//   }
