import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/category_details_screen.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView(
      {Key? key,
      required this.categoriesImages,
      required this.categoriesIcons,
      required this.backgroundAvatarColor,
      required this.categoriesStrings})
      : super(key: key);
  final List categoriesStrings;
  final List categoriesImages;
  final List categoriesIcons;
  final List backgroundAvatarColor;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemCount: categoriesStrings.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryDetailsScreen(
                            // clickedCategory: categoriesStrings[index]
                        ),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 5.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.h,
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  categoriesStrings[index],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Image.asset(
                            categoriesImages[index],
                            // width:MediaQuery.of(context).size.width/3,
                            height: 80.h,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(
                              radius: 28.r, backgroundColor: Colors.white),
                          CircleAvatar(
                            radius: 24.r,
                            backgroundColor: backgroundAvatarColor[index],
                            backgroundImage: AssetImage(categoriesIcons[index]),
                          )
                        ],
                      )
                    ],
                  ),
                )));
      },
    );
  }
}
