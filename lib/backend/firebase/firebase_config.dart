import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyACcSCDUjfk0dO3qSFBu7fQSmswOVuqAnE",
            authDomain: "proyectos-fidelitas.firebaseapp.com",
            projectId: "proyectos-fidelitas",
            storageBucket: "proyectos-fidelitas.firebasestorage.app",
            messagingSenderId: "224020183602",
            appId: "1:224020183602:web:8b5cba11a48cc4ccf19a2b",
            measurementId: "G-HC1PD598JL"));
  } else {
    await Firebase.initializeApp();
  }
}
