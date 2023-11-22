import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/widgets/categories_grid_view.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);
  final List<String> categoriesImages = [
    'assets/images/chicken.jpg',
    'assets/images/dates.jpg',
    'assets/images/dried.jpg',
    'assets/images/flavours.jpg',
    'assets/images/freezer.jpg',
    'assets/images/fruits.jpg',
    'assets/images/leaves.jpg',
    'assets/images/vegetables.jpg'
  ];
  final List<String> categoriesStrings = [
    'دواجن',
    'تمور',
    'فواكه مجففه',
    'بهارات',
    'مجمدات',
    'فواكه',
    'ورقيات',
    'خضار'
  ];
  final List<String> categoriesIcons = [
    'assets/images/icons/turkey.png',
    'assets/images/icons/dates.png',
    'assets/images/icons/fruit dried.png',
    'assets/images/icons/flavours.png',
    'assets/images/icons/fish.png',
    'assets/images/icons/harvest.png',
    'assets/images/icons/leaves.png',
    'assets/images/icons/vegetable.png'
  ];
  final List<Color> backgroundAvatarColor = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.brown,
    Colors.greenAccent,
    Colors.lightBlue,
    Colors.pinkAccent,
    Colors.tealAccent
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
            body: SingleChildScrollView(

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
                        'التصنيفات',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_sharp))
                    ],
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: CategoriesGridView(
                        categoriesImages: categoriesImages,
                        categoriesIcons: categoriesIcons,
                        categoriesStrings: categoriesStrings,
                        backgroundAvatarColor: backgroundAvatarColor,
                      ))
                ],
              ),
            )));
  }
}
