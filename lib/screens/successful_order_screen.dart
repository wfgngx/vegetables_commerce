import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/order_stepper_screen.dart';

import '../const.dart';
import 'address_screen.dart';

class SuccessfulOrderScreen extends StatelessWidget {
  const SuccessfulOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        " طلب ناجح",
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
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondSmallRadius,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 3,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 120,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          ' طلبك ناجح !',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'شكرا علي طلبك ستحصل علي رد في غصون بضع دقائق ',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Spacer(
                          flex: 6,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderStepper(),
                                ));
                          },
                          child: Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xff151B31),
                                  borderRadius: BorderRadius.circular(12)),
                              width: MediaQuery.of(context).size.width - 50.w,
                              child: const Center(
                                child: Text(
                                  " ترتيب المسار",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
