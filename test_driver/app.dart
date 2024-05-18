import 'package:firebase_core/firebase_core.dart';

import 'package:volunteer_u/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';

Future<void> main() async {
  // This line enables the extension
  enableFlutterDriverExtension();

  await Firebase.initializeApp();

 // Call the main() function of your app or call runApp with any widget you
  // are interested in testing.
  runApp(MyApp());
}