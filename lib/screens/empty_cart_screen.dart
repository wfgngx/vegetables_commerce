import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/address_screen.dart';
import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/home_screen.dart';

import '../const.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child:
        Scaffold(
            backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart)),
                      const Text(
                        "عربة التسوق",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_sharp))
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.3,
                    child: Column(
                      children: [
                        const Spacer(),
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 120,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          'عربة التسوق فارغه!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'اجعل سلتك سعيده وأضف منتجات',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                        Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        },
                        child:   Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: secondSmallRadius,
                                borderRadius: BorderRadius.circular(12)),
                            width: MediaQuery.of(context).size.width - 50.w,
                            child: Center(
                              child: Text(
                                "ابدأ التسوق",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),SizedBox(
                          height: 12.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
