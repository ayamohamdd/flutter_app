import 'package:flutter/material.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter_app/screens/signup.dart';
// import 'package:flutter_app/screens/home_Page.dart';
// import 'package:flutter_app/screens/welcome.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_13/screens/startup.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(
          useMaterial3: true,
        ),
        home: startup()
        // home: const welcome(),
        //home: const login_page(),
        //home: const signup(),
        // home: HomePage(),
        );
  }
}
