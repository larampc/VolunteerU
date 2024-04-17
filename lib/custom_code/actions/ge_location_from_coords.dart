// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geocoding/geocoding.dart';

Future<String?> geLocationFromCoords(LatLng? coords) async {
  // Gets the place name from the given coordenats(latitude and longitude) using the geocoding package
  if (coords == null) {
    return "COORDS NULL";
  }

  List<Placemark> placemarks =
      await placemarkFromCoordinates(coords.latitude, coords.longitude);
  if (placemarks.isNotEmpty) {
    Placemark placemark = placemarks.first;
    String locationName =
        "${placemark.thoroughfare}, ${placemark.subLocality}, ${placemark.locality}";
    return locationName;
  } else {
    print('Error getting location from coordinates');
  }
  return "ERROR";
}
