import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final List<String> profileContainerList = [
    'مدفوعاتي',
    'طلباتي',
    'عني',
    'رمز ترويجي',
    'المعاملات',
    'المفضل لدي',
    'إعدادات',
    'تنبيه',
    'عنواني'
  ];
  final List<Icon> profileContainerIcons = [
    const Icon(
      Icons.credit_card_outlined,
      color: Colors.red,
    ),
    const Icon(
      Icons.shopping_cart_sharp,
      color: Colors.red,
    ),
    const Icon(
      Icons.person,
      color: Colors.red,
    ),
    const Icon(
      Icons.settings,
      color: Colors.red,
    ),
    const Icon(
      Icons.monetization_on_outlined,
      color: Colors.red,
    ),
    const Icon(
      Icons.favorite,
      color: Colors.red,
    ),
    const Icon(
      Icons.settings,
      color: Colors.red,
    ),
    const Icon(
      Icons.notifications,
      color: Colors.red,
    ),
    const Icon(
      Icons.location_on,
      color: Colors.red,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
      body:Padding(padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),child:  Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30.h,
                    color: Colors.transparent,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 130.h,
                      decoration: BoxDecoration(
                          color: secondSmallRadius,
                          borderRadius: BorderRadius.circular(12.r)),
                      child:  Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'محمود يوسف',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'mahmoudyoussef@gmail.com',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              Positioned(
                  child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: secondParentRadius,
                  ),
                  CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/images/vegetables_cart.jpg'),
                    radius: 35.r,
                  )
                ],
              ))
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.7,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: profileContainerList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 1.1),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8, right: 8, left: 8),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.r),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          profileContainerIcons[index],
                          Text(
                            profileContainerList[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r
                          ),
                          color: Color(0xff34B97E),
                        ),
                        height: 100.h,
                        width: 100.w,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: Color(0xff65CF9F)),
                            width: 45.w,
                            height: 45.h,
                            child: const Icon(
                              Icons.exit_to_app,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'خروج',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 30.h,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: const Color(0xffE04552),
                    ),
                    height: 100.h
                    ,
                    width: 100.w
                    ,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: const Color(0xffED6B73)),
                        width: 45.w,
                        height: 45.h
                        ,
                        child: const Icon(
                          Icons.support_agent,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'مركز الدعم',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
