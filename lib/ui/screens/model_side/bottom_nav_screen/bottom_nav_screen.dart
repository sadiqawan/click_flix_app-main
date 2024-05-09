// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:click_flex_ui/core/constants/const_colors.dart';
// import 'package:click_flex_ui/ui/screens/model_side/bottom_nav_screen/setting_screen/setting_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
// import 'package:get/get.dart';
// import '../../../../controller/AppController.dart';
// import '../reel_screen/reel_screen.dart';
// import 'casting_screen/casting_screen.dart';
// import 'exploer_screen/exploer_screen.dart';
// import 'models_screen/models_screen.dart';
//
// class BottomNavScreen extends StatefulWidget {
//   const BottomNavScreen({super.key});
//
//   @override
//   State<BottomNavScreen> createState() => _BottomNavScreenState();
// }
//
// class _BottomNavScreenState extends State<BottomNavScreen> {
//   List page = const [
//     ExploerScreen(),
//     ModelsScreen(),
//     CastingScreen(),
//     SettingScreen(),
//   ];
//
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   final appController = Get.find<AppController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Text('Selected Index: $_selectedIndex'),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.home),
//                 onPressed: (){
//                   setState(() {
//                     ModelsScreen();
//                   });
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () => _onItemTapped(1),
//               ),
//               SizedBox(width: 48), // Spacer
//               IconButton(
//                 icon: Icon(Icons.notifications),
//                 onPressed: () => _onItemTapped(2),
//               ),
//               IconButton(
//                 icon: Icon(Icons.person),
//                 onPressed: () => _onItemTapped(3),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Add your onPressed function here
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add),
//         elevation: 2.0,
//         shape: CircleBorder(),
//       ),
//       /*

//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//
//         backgroundColor: ConstColor.lightblackColor.value.withOpacity(.7),
//         icons:   iconList,
//
//         inactiveColor: ConstColor.greyColor.value,
//         activeColor: ConstColor.primaryColor.value,
//         activeIndex: _bottomNavIndex,
//
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.defaultEdge,
//         leftCornerRadius: 24,
//
//         rightCornerRadius: 24,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//         //other params
//       ),
//       body:  Center(
//         child: page.elementAt(_bottomNavIndex),
//       ),
//       */
//     );
//   }
// }

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/ui/screens/model_side/bottom_nav_screen/setting_screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../reel_screen/reel_screen.dart';
import 'casting_screen/casting_screen.dart';
import 'exploer_screen/exploer_screen.dart';
import 'models_screen/models_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<Widget> _pages = [
    ExploerScreen(),
    ModelsScreen(),
    CastingScreen(),
    SettingScreen(),
  ];
  final List<String> _pagesScreen = const [
    'assets/svg_images/explore.svg',
    'assets/svg_images/model.svg',
    'assets/svg_images/casting.svg',
    'assets/svg_images/menu.svg',
  ];

  final List<String> _imagePaths = const [
    'assets/svg_images/explore.svg',
    'assets/svg_images/model.svg',
    'assets/svg_images/casting.svg',
    'assets/svg_images/menu.svg',
  ];

  final Color _activeColor = Colors.white;
  final Color _inactiveColor = Colors.grey;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 7,

color: const Color(0xff333335),
        shape: const CircularNotchedRectangle(),
        child: Container(
          
          decoration: const BoxDecoration(

            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
          ),
          // color: ConstColor.greyColor.value.withOpacity(.3),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_pages.length, (index) {
              return IconButton(
                icon: SvgPicture.asset(
                  _pagesScreen[index],
                  width: 26.w,
                  height: 26.h,
                  color: _selectedIndex == index ? _activeColor : _inactiveColor,

                  // Adjust width and height as needed
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              );
            }),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ConstColor.gradientTwoColor.value,
              ConstColor.gradientOneColor.value
            ],
            // Specify your gradient colors
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          shape: const CircleBorder(side: BorderSide(color: Colors.blueAccent)),
          onPressed: () {
            Get.to(()=> const reel_screen());
          },
          child: SvgPicture.asset(
            "assets/svg_images/add.svg",
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
