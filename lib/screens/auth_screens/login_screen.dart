import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/auth_screens/forget_password_screens/phone_verify_screen.dart';
import 'package:vegetables_commerce/screens/auth_screens/sign_up_screen.dart';
import 'package:vegetables_commerce/screens/splash_screen.dart';

import '../../const.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding:  EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 12.h,
            ),
            Padding(
              padding:  EdgeInsets.only(top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: Colors.black87)),
                    child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon:  Icon(
                              Icons.add_shopping_cart,
                              size: 16.r,
                            ))),
                  ),
                  Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.black87)),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16.sp,
                            )),
                      ))
                ],
              ),
            ),
            const Spacer(),
             Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text(
                      'ســــــــــلتي',
                      style: TextStyle(
                          color: firstSmallRadius,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "S  E  L  A  T  Y",
                      style:
                          TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 12.w,
                ),
                CircleAvatar(
                  radius: 52.r,
                  backgroundImage:
                      AssetImage('assets/images/vegetables_cart.jpg'),
                ),
                Spacer(),
              ],
            ),
             SizedBox(
              height: 32.h,
            ),
            TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.task_alt,
                      color: secondSmallRadius,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    label: const Text("عنوان البريد الإلكتروني"))),
             SizedBox(
              height: 16.h,
            ),
            TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    label: Text("كلمة المرور"))),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SplashScreen();
                  },
                ));
              },
              child:  InkWell(onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhoneVerifyScreen();
                },));
              },child:  Text('هل نسيت كلمة السر'),
            ),),
            const SizedBox(
              height: 12,
            ),
            InkWell(onTap: () {
              Navigator.push(context,  MaterialPageRoute(builder: (context) =>SplashScreen() ,));
            },child:
            Center(
                child: Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: secondSmallRadius),
                    child: const Center(
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )))),
            const Spacer(),
             Row(
              children: [
                const Text('ليس لديك حساب؟'),
                const Spacer(),
            InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return SignUpScreen();
               },));
             },
            child:      Row(
              children: [
                Icon(
                  Icons.arrow_left,
                  size: 32.r,
                ),
                const Text(' إنشاء حساب جديد')
              ],
            ),)
              ],
            ),
             SizedBox(
              height: 12.h,
            )
          ],
        ),
      ),
    );
  }
}
