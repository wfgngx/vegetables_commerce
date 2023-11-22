import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/auth_screens/login_screen.dart';
import 'package:vegetables_commerce/screens/auth_screens/sign_up_screen.dart';

class LogINAndSignUpScreen extends StatefulWidget {
  const LogINAndSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LogINAndSignUpScreen> createState() => _LogINAndSignUpScreenState();
}

class _LogINAndSignUpScreenState extends State<LogINAndSignUpScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChannels.lifecycle.setMessageHandler((message) {
      if (message == AppLifecycleState.resumed.toString()) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight
        ]);
      }
      return Future.value('');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
        body: OrientationBuilder(builder: (context, orientaton) {
          return Column(children: [
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                const Spacer(),
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
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
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
              height: 60.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const LogInScreen();
                    },
                  ));
                },
                child: Container(
                    height: 50.h,
                    width: orientaton == Orientation.landscape ? 600.w : 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: firstSmallRadius),
                    child: const Center(
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ))),
            SizedBox(
              height: 12.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ));
              },
              child: Container(
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: secondSmallRadius),
                  child: const Center(
                    child: Text(
                      "انشئ حساب",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            const Spacer(
              flex: 3,
            )
          ]);
        }));
  }
}
