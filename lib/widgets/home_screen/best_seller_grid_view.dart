import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
      itemCount: 50,
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.59),
      itemBuilder: (context, index) {
        return Padding(
            padding:
                EdgeInsets.only(top: 8.h, bottom: 8.h, right: 8.w, left: 8.w),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 20,
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
                        height: 120,
                        'assets/images/dried.jpg',
                        fit: BoxFit.contain,

                        // fit: BoxFit.cover,
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 360,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
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
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  color: firstSmallRadius,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.white,
                                      size: 16,
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
