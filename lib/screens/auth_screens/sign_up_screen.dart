import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/auth_screens/login_screen.dart';

import '../../const.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:  EdgeInsets.all(16.h),
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
                              icon:  Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 16.r,
                              )),
                        ))
                  ],
                ),
              ),
               SizedBox(
                height: 24.h,
              ),
               Text(
                'إنشاء حساب جديد',
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
              ),
               Text(
                'أدحل بياناتك لإنشاء حساب',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
               SizedBox(
                height: 37.h,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      label:  Text(
                        "الاسم",
                        style: TextStyle(color: Colors.black87),
                      ))),
               SizedBox(
                height: 16.h,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      suffixIcon:  Icon(
                        Icons.task_alt,
                        color: secondSmallRadius,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      label:  Text(
                        "عنوان البريد الإلكتروني",
                        style: TextStyle(color: Colors.black87),
                      ))),
               SizedBox(
                height: 16.h,
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon:  Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      label:  Text(
                        "كلمة المرور",
                        style: TextStyle(color: Colors.black87),
                      ))),
               SizedBox(
                height: 14.h,
              ),
              Center(
                  child: Container(
                      height: 48.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: secondSmallRadius),
                      child:  Center(
                        child: Text(
                          "اشتراك",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ))),
               SizedBox(
                height: 28.h,
              ),
               Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'أو اشتراك مع ',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )),
               SizedBox(
                height: 18.h,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 140.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.deepOrangeAccent)),
                      child:  Row(
                        children: [
                          Spacer(),
                          Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent, fontSize: 18.sp),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/images/google.png'),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                    Container(
                      width: 140.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color:  Color.fromRGBO(56, 89, 150, 1))),
                      child:  Row(
                        children: [
                          Spacer(),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color:  Color.fromRGBO(56, 89, 150, 1)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/images/facebook.png'),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               Spacer(),
              Row(
                children: [
                  Text(' لديك حساب بالفعل؟'),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return  LogInScreen();
                        },
                      ));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_left,
                          size: 32.r,
                        ),
                        Text(' تسجيل الدخول')
                      ],
                    ),
                  )
                ],
              ),
               SizedBox(
                height: 10.h,
              )
            ],
          ),
        ));
  }
}
