import 'package:clone_insta/views/constants.dart';
import 'package:clone_insta/views/screens/auth/login_screen.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controllers/auth_controller.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await FirebaseAppCheck.instance.activate();

    Get.put(AuthController());
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TikTok Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: LoginScreen(),
      );
    }
  }