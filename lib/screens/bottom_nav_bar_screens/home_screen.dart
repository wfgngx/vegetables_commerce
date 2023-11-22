import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/categories_screen.dart';
import 'package:vegetables_commerce/screens/profile_screen.dart';
import 'package:vegetables_commerce/widgets/home_screen/best_seller_grid_view.dart';
import 'package:vegetables_commerce/widgets/categories_listview_home_screen.dart';
import 'package:vegetables_commerce/widgets/home_screen/shopping_as_offers.dart';
import 'package:vegetables_commerce/widgets/home_screen/tazeg_w_saree3_list_view.dart';
import '../../widgets/home_screen/show_slider_photos.dart';
import '../../widgets/home_screen/take_the_chance_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> sliderPhotoString = [
    'assets/images/veg1.jpg',
    'assets/images/veg2.jpg',
    'assets/images/veg3.jpg'
  ];
  final List<Color> colorOffersList = [
    Colors.purple,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.orange,
    Colors.green,
    Colors.lightBlue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ));
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 30.r,
                          backgroundImage: const AssetImage(
                              'assets/images/vegetables_cart.jpg'),
                        )),
                    const Column(
                      children: [Text('محمود يوسف'), Text('القاهره ,مصر')],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_sharp))
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
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
                  height: 12.h,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      'القيمه الأفضل',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'أعلي المبيعات',
                      style: TextStyle(color: Colors.black45),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'مشاهدة الكل',
                      style: TextStyle(color: Colors.black45),
                    )
                  ],
                ),
                ShowSliderPhotos(photoListSlider: sliderPhotoString),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Text(
                      'التصنيفات',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return CategoriesScreen();
                            },
                          ));
                        },
                        child: Text(
                          'مشاهدة الكل',
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                    height: 120.h, width: 400, child: CategoriesListView()),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Text(
                      'الأكثر مبيعا',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'مشاهدة الكل',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 2,
                  child: const BestSellerGridView(),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Text(
                      ' تسوق حسب العروض',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'مشاهدة الكل',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(
                    height: 320.h,
                    child: ShoppingAsOffers(
                      colorOfferContainerList: colorOffersList,
                    )),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Text(
                      'طازج و سريع',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'مشاهدة الكل',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300.h,
                  child: TazegWSaree3ListView(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 300.h,
                  child: TazegWSaree3ListView(),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/veg2.jpg',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ))),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Text(
                      'انتهز الفرصه',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'مشاهدة الكل',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(
                  height: 305.h,
                  child: TakeTheChanceListView(),
                )
              ],
            ),
          ),
        ));
  }
}
