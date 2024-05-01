import 'package:click_flex_ui/ui/screens/auth/splash_screen/splash_screen.dart';
import 'package:click_flex_ui/ui/screens/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controller/AppController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final appController =Get.put(AppController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Click Flex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: const SplashScreen(),
       // home: const BottomNavScreen(),
    );
  }
}

