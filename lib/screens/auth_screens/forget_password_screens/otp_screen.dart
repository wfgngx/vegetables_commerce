import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/auth_screens/forget_password_screens/change_password_screen.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          icon: Icon(
                            Icons.add_shopping_cart,
                            size: 16.r,
                          ))),
                ),
                Text(
                  'التحقق من الهاتف',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
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
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16.r,
                          )),
                    ))
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            buildIntroText(),
            SizedBox(
              height: 65.h,
            ),
            buildPinCodeFields(context),
            SizedBox(
              height: 26.h,
            ),
            const Text(
              'لم يصل الكود ؟',
              style: TextStyle(color: Colors.black45),
            ),
            Text(
              'إعادة إرسال رمز جديد',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(237, 63, 76, 1),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ChangePasswordScreen();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: secondSmallRadius),
                  width: 100.w,
                  height: 50.h,
                  child: Center(
                      child: Text(
                    "تحقق",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  )),
                ))
          ],
        ),
      ),
    );
  }

  Widget buildPinCodeFields(BuildContext context) {
    return PinCodeTextField(
      textStyle: TextStyle(color: Colors.white, fontSize: 32.sp),
      length: 4,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16.r),
          fieldHeight: 70.h,
          fieldWidth: 60.w,
          borderWidth: 1.r,
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          selectedColor: Colors.white,
          inactiveFillColor: Colors.white,
          activeFillColor: const Color.fromRGBO(237, 63, 76, 1),
          selectedFillColor: Colors.white),
      animationDuration: const Duration(milliseconds: 300),
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      onCompleted: (pinCode) {},
      onChanged: (value) {},
      appContext: context,
    );
  }

  Widget buildIntroText() {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.start,
          'ادخل رمز OTP الخاص بك هنا',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
