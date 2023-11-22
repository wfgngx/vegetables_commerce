import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/auth_screens/forget_password_screens/successful_password_change_screen.dart';

import '../../../const.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 50.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.transparent)),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon:  Icon(
                            Icons.add_shopping_cart,
                            size: 16.r,
                          ))),
                ),
                 Text(
                  'تغيير كلمة المرور',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: Colors.transparent)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon:  Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16.r,
                          )),
                    ))
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
             Text(
              'أدخل كلمة المرور الجديده',
              style: TextStyle(color: Colors.black45, fontSize: 18.sp),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text(
                        'كلمة المرور الحاليه',
                        style: TextStyle(color: Colors.black45),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none),
                )),
            SizedBox(
              height: 30.h,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text(
                        'كلمة المرور الجديده',
                        style: TextStyle(color: Colors.black45),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none),
                )),
            SizedBox(
              height: 30.h,
            ),
            Center(
                child:InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SuccessfulPasswordChangeScreen();
                  },));
                },child:
                Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: secondSmallRadius),
                    child: const Center(
                      child: Text(
                        "تغيير",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ))),)
          ],
        ),
      ),
    );
  }
}
