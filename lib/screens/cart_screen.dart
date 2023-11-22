import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/address_screen.dart';
import 'package:vegetables_commerce/screens/empty_cart_screen.dart';
import 'package:vegetables_commerce/screens/profile_screen.dart';
import 'package:vegetables_commerce/widgets/cart_item_listview.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
          body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EmptyCartScreen(),
                        ));
                  },
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
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_sharp))
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: const CartItemListView(),
          ),
          SizedBox(
            height: 30.h,
          ),
          Card(
            child: Container(
                // height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text('العدد'),
                            Text('المجموع الفرعي'),
                            Text('رسوم التوصيل'),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'الإجمالي',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text('4'),
                            Text('400.00'),
                            Text(' Free'),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              ' 100.00 SAR',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ))),
          ),
          SizedBox(
            height: 12.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddressScreen(),));
            },
            child:  Container(
              height: 40.h,
              decoration: BoxDecoration(
                  color: secondSmallRadius,
                  borderRadius: BorderRadius.circular(16)),
              width: MediaQuery.of(context).size.width - 50.w,
              child: Center(
                child: Text(
                  "الدفع",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )))
        ],
      ),
    ));
  }
}
