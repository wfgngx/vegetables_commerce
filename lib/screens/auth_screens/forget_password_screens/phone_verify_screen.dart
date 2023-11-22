import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/auth_screens/forget_password_screens/otp_screen.dart';

import '../../../const.dart';

class PhoneVerifyScreen extends StatelessWidget {
  const PhoneVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: 30,
                  // width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    // border: Border.all(color: Colors.black87)
                  ),
                  child: Center(
                      child: Text(
                    "تحقق من رقم الهاتف",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  )
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: const Icon(
                      //       Icons.add_shopping_cart,
                      //       size: 16,
                      //     ))
                      ),
                ),
                Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      // border: Border.all(color: Colors.black87)
                    ),
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
          ),
          SizedBox(
            height: 20.h,
          ),
          // const Text(
          //   textAlign: TextAlign.start,
          //   'تحقق من رقم الهاتف',
          //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          // ),
          // SizedBox(
          //   height: 16.h,
          // ),
          Text(
            'لقد أرسنا لك رساله نصيه قصيره تحتوي علي رمز إلي رقم 651565156565',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          SizedBox(
            height: 56.h,
          ),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black45)),
                width: 200.w,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.cancel_outlined,
                          color: Colors.red,
                        )),
                    const Spacer(),
                    SizedBox(
                        width: 150.w,
                        child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none))),
                  ],
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black45)),
                width: 100.w,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down_rounded)),
                    const Text('+966'),
                    SizedBox(
                      width: 3.w,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Container(
                height: 50.h,
                width: 330.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: secondSmallRadius),
                child: InkWell(
                  child: const Center(
                    child: Text(
                      "تأكيد",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return OTPScreen();
                      },
                    ));
                  },
                )),
          )
        ],
      ),
    ));
  }
}
