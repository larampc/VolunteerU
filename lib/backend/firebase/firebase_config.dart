import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDiBtdxhb1Oy9d-Q6XcQuaIDqtYDWUhBE0",
            authDomain: "volunteeru-5b1dd.firebaseapp.com",
            projectId: "volunteeru-5b1dd",
            storageBucket: "volunteeru-5b1dd.appspot.com",
            messagingSenderId: "614417557875",
            appId: "1:614417557875:web:525ef91177eec3cc0afd06",
            measurementId: "G-W5XC3BD5J0"));
  } else {
    await Firebase.initializeApp();
  }
}
