import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/constants/const_colors.dart';
import '../onboard_screen/onboarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const OnBoarding()
            )
        )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/bg_splash.png"),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration:   BoxDecoration(
              gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                  ]
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png",width: 150.w,height: 167,),
                Text("CLICK FLEX",style: GoogleFonts.raleway(
                    color:ConstColor.primaryColor.value,
                    fontSize:32.sp,
                    fontWeight:FontWeight.w700),

                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
