import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/splash_screen.dart';
import 'package:vegetables_commerce/screens/login_signup_screen.dart';

class ThirdOnBoardingScreen extends StatelessWidget {
  const ThirdOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(
                top: 20.h, bottom: 20.h, right: 45.w, left: 45.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Center(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 105.r,
                      backgroundColor: thirdParentRadius,
                    ),
                    CircleAvatar(
                      radius: 90.r,
                      backgroundColor: thirdSubRadius,
                    ),
                    CircleAvatar(
                      radius: 70.r,
                      backgroundColor: thirdSmallRadius,
                      child: Icon(
                        Icons.fire_truck_outlined,
                        color: Colors.white,
                        size: 52.r,
                      ),
                    )
                  ],
                )),
                // Image.asset('assets/images/vegetables_cart.jpg',width: 60,height: 100,fit: BoxFit.contain,),
                const Spacer(),
                Text(
                  "تسليم سريع للمنزل",
                  style: TextStyle(
                      color: thirdSmallRadius,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Text(
                  'جميع العناصر لها نضاره حقيقيه وهي مخصص لاحتياجك ',
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                      iconSize: 32.r,
                      alignment: Alignment.center,
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(thirdSmallRadius)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const LogINAndSignUpScreen();
                          },
                        ));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                const Spacer(),
              ],
            )));
  }
}
