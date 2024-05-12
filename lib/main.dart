import 'package:click_flex_ui/ui/screens/model_side/auth/splash_screen/splash_screen.dart';
import 'package:click_flex_ui/ui/screens/model_side/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'controller/AppController.dart';

void main() {
  runApp(
      ScreenUtilInit(
    designSize: const Size(390, 844),
    splitScreenMode: true,
    minTextAdapt: true,
    builder: (BuildContext context, Widget? child) {
      return const MyApp();
    }
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final AppController appController =Get.put(AppController());
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

/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Custom Bottom Navigation Bar'),
      ),
      body: Center(
        child: Text('Selected Index: $_selectedIndex'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => _onItemTapped(1),
              ),
              SizedBox(width: 48), // Spacer
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed function here
        },
        tooltip: 'Add',
        child: Icon(Icons.add),
        elevation: 2.0,
        shape: CircleBorder(),
      ),
    );
  }
}
*/
