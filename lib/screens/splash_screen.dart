import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/bottom_nav_bar_screen.dart';
import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/home_screen.dart';

import '../const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToBottomNavBarScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
      body: Row(
        children: [
          const Spacer(),
          Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              CircleAvatar(
                radius: 100.r,
                backgroundImage:
                    const AssetImage('assets/images/vegetables_cart.jpg'),
              ),
              Text(
                'ســــــــــلتي',
                style: TextStyle(
                    color: firstSmallRadius,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "S  E  L  A  T  Y",
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40.h,
              ),
              const CircularProgressIndicator(color: secondSmallRadius),
              const Spacer(
                flex: 1,
              )
            ],
          ),
          Spacer()
        ],
      ),
    );
  }

  navigateToBottomNavBarScreen() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNavBarScreen(),
          ));
    });
  }
}
