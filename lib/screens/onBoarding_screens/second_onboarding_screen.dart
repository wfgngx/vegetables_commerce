import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/onBoarding_screens/third_onboarding_screen.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding:
            EdgeInsets.only(top: 20.h, bottom: 20.h, right: 45.w, left: 45.w),
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
                      backgroundColor: secondParentRadius,
                    ),
                    CircleAvatar(
                      radius: 90.r,
                      backgroundColor: secondSubRadius,
                    ),
                    CircleAvatar(
                      radius: 70.r,
                      backgroundColor: secondSmallRadius,
                      child: Icon(Icons.home_outlined,color: Colors.white,size: 52.r,),
                    )
                  ],
                )),
                // Image.asset('assets/images/vegetables_cart.jpg',width: 60,height: 100,fit: BoxFit.contain,),
                const Spacer(),
                 Text(
                  "عروض طازجه وجوده",
                  style: TextStyle(
                      color: secondSmallRadius,
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
                  child: IconButton(                     iconSize: 32.r,

                      alignment: Alignment.center,
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(secondSmallRadius)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ThirdOnBoardingScreen();
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
