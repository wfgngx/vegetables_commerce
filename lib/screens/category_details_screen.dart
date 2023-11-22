import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const.dart';
import 'cart_screen.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({
    Key? key,
  }) : super(key: key);
  // final String clickedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
      body: SingleChildScrollView(
          child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            children: [
              Container(
                color: Colors.green,
                height: MediaQuery.of(context).size.height / 4,
                child: Row(
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
                          //       builder: (context) => CartScreen(),
                          //     ));
                        },
                        icon: const Icon(Icons.shopping_cart)),
                    const Text(
                      "الفاكهه",
                      style: TextStyle(
                          color: Colors.white,
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
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                color: const Color.fromRGBO(244, 244, 244, 1.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 40.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: firstSmallRadius,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.linear_scale_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 270.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "البحث عن المنتجات...",
                                suffixIcon: Icon(Icons.search)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: 50,
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.59),
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.only(
                                    top: 8.h,
                                    bottom: 8.h,
                                    right: 8.w,
                                    left: 8.w),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12))),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                  color: secondSmallRadius,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  12),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12))),
                                              child: const Center(
                                                child: Text(
                                                  "جديد",
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Image.asset(
                                            width: 360,
                                            height: 120,
                                            'assets/images/dried.jpg',
                                            fit: BoxFit.contain,

                                            // fit: BoxFit.cover,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Container(
                                            width: 360,
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(0),
                                                  child: Container(
                                                      width: 80,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        color:
                                                            secondSmallRadius,
                                                      ),
                                                      child: const Center(
                                                          child: Text(
                                                        "خضروات",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ))),
                                                ),
                                                Text('قسم الخضروات'),
                                                Text('22 ريال'),
                                              ],
                                            ),
                                          )),
                                      Spacer(),
                                   InkWell(
                                     onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
                                     },
                                     child:Container(
                                     decoration: const BoxDecoration(
                                         color: Colors.black26,
                                         borderRadius: BorderRadius.only(
                                             bottomLeft: Radius.circular(12),
                                             bottomRight:
                                             Radius.circular(12))),
                                     child: Padding(
                                         padding: const EdgeInsets.all(4),
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment
                                               .spaceBetween,
                                           children: [
                                             const Text('اطلب الان'),
                                             Container(
                                                 height: 40.h,
                                                 width: 40.w,
                                                 decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(
                                                       38),
                                                   color: firstSmallRadius,
                                                 ),
                                                 child: IconButton(
                                                     onPressed: () {},
                                                     icon: const Icon(
                                                       Icons
                                                           .add_shopping_cart,
                                                       color: Colors.white,
                                                       size: 16,
                                                     )))
                                           ],
                                         )),
                                   ) ,)   
                                    ],
                                  ),
                                ));
                          },
                        ))
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 4 - 30.h,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(radius: 28.r, backgroundColor: Colors.white),
                  CircleAvatar(
                    radius: 24.r,
                    backgroundImage:
                        const AssetImage('assets/images/icons/fruit dried.png'),
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage(categoriesIcons[index]),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
