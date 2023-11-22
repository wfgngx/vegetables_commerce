import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/home_screen.dart';
import 'package:vegetables_commerce/screens/splash_screen.dart';

class SuccessfulPasswordChangeScreen extends StatelessWidget {
  const SuccessfulPasswordChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                radius: 121.r,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                backgroundColor: secondSmallRadius,
                radius: 120.r,
                child: Center(
                  child: Icon(
                    Icons.vpn_key_outlined,
                    color: Colors.white,
                    size: 100.r,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'تم تغيير كلمة المرور الخاصه بك',
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp),
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r)),
                    height: 50.h,
                    width: 200.w,
                    child: Center(
                      child: Text(
                        "تم",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))),
          const Spacer()
        ],
      ),
      backgroundColor: const Color.fromRGBO(42, 192, 125, 1),
    );
  }
}
