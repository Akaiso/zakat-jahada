import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zakat_jahada/view/splash_screen.dart';
import './auth/secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: const FirebaseOptions(
      //     apiKey: 'key',
      //     appId: "id",
      //     messagingSenderId: 'sendid',
      //     projectId: 'myapp')
      );
  if (kIsWeb) {
    await Firebase.initializeApp(
        options:  FirebaseOptions(
            apiKey: mySecretKey,
            appId: "1:125786062487:web:19fc126e58a813c3b0b3d2",
            messagingSenderId: "125786062487",
            projectId: "zakatjahada"));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'zakat jahada',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
