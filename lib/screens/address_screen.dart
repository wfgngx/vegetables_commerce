import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/order_stepper_screen.dart';
import 'package:vegetables_commerce/screens/successful_order_screen.dart';

import '../const.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool homeOrderAddress = true;
  bool officeOrderAddress = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const SuccessfulOrderScreen(),
                            //     ));
                          },
                          icon: const Icon(Icons.shopping_cart)),
                      const Text(
                        "عنوان التسليم",
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
                  Text('يشحن إلي'),
                  Container(
                    padding: EdgeInsets.only(bottom: 8,right: 8,left: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: secondParentRadius,
                          child: Text(
                            'افتراضي',
                            style: TextStyle(color: secondSmallRadius),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 150.h,
                              child: CheckboxListTile(
                                title: const Text("المنزل"),
                                fillColor:
                                    const MaterialStatePropertyAll(Colors.red),
                                shape: const CircleBorder(),
                                checkboxShape: CircleBorder(),
                                value: homeOrderAddress,
                                onChanged: (value) {
                                  setState(() {
                                    homeOrderAddress = value!;
                                    officeOrderAddress = false;
                                  });
                                },
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('A/234, Kings Plazaa'),
                        ),
                        Row(
                          children: [Text('جوال : 0567992311')],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8,right: 8,left: 8),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 150.h,
                              child: CheckboxListTile(
                                checkboxShape: CircleBorder(),
                                title: const Text("المكتب"),
                                fillColor:
                                    const MaterialStatePropertyAll(Colors.red),
                                shape: const CircleBorder(),
                                value: officeOrderAddress,
                                onChanged: (value) {
                                  setState(() {
                                    officeOrderAddress = value!;
                                    homeOrderAddress = false;
                                  });
                                },
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('A/234, Kings Plazaa'),
                        ),
                        Row(
                          children: [Text('جوال : 0567992311')],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuccessfulOrderScreen(),
                            ));
                      },
                      child: Center(
                        child: Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: secondSmallRadius,
                                borderRadius: BorderRadius.circular(12)),
                            width: MediaQuery.of(context).size.width - 50.w,
                            child: Center(
                              child: Text(
                                " التسليم لهذا العنوان",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      )),
                  Spacer(),
                ],
              ),
            )));
  }
}
