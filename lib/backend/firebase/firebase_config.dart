import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBQW-6UGtVr6Uk8z2Co82pjexA8C4jHDhU",
            authDomain: "fitnomic-aa02a.firebaseapp.com",
            projectId: "fitnomic-aa02a",
            storageBucket: "fitnomic-aa02a.appspot.com",
            messagingSenderId: "179644365262",
            appId: "1:179644365262:web:5298143ff8c373a2de939f",
            measurementId: "G-E28VYG664M"));
  } else {
    await Firebase.initializeApp();
  }
}
