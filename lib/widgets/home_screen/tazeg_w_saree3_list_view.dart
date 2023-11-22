import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const.dart';

class TazegWSaree3ListView extends StatelessWidget {
  const TazegWSaree3ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
            padding:
                EdgeInsets.only(top: 8.h, bottom: 8.h, right: 8.w, left: 8.w),
            child: Container(
              width: 130.w,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 30.w,
                          height: 20.h,
                          decoration: const BoxDecoration(
                              color: secondSmallRadius,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12))),
                          child: const Center(
                            child: Text(
                              "جديد",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.favorite,
                            color: secondSmallRadius,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        width: 360,
                        height: 100.h,
                        'assets/images/dried.jpg',
                        fit: BoxFit.contain,

                        // fit: BoxFit.cover,
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 360.w,
                        height: 75.h,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: secondSmallRadius,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "خضروات",
                                    style: TextStyle(color: Colors.white),
                                  ))),
                            ),
                            Text('قسم الخضروات'),
                            Text('22 ريال'),
                          ],
                        ),
                      )),
                  Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('اطلب الان'),
                            Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  color: firstSmallRadius,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.white,
                                      size: 12,
                                    )))
                          ],
                        )),
                  )
                ],
              ),
            ));
      },
    );
  }
}
