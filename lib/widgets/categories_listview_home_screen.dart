import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: EdgeInsets.only(top: 5.h),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(categoriesStrings[index]),
                      Image.asset(
                        categoriesImages[index],
                        width: 100.w,
                        height: 50.h,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(radius: 24.r, backgroundColor: Colors.white),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage(categoriesIcons[index]),
                      )
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }
}
