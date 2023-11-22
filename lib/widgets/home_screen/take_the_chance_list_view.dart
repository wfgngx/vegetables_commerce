import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TakeTheChanceListView extends StatelessWidget {
  const TakeTheChanceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(padding: EdgeInsets.all(8),child:  Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          height: 310.h,
          width: 180.w,
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'تفاح - فاكهة',
                        style: TextStyle(color: Colors.black38, fontSize: 18),
                      ),
                      Text(
                        'خصم 25% بدون فوايد',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Image.asset('assets/images/fruits.jpg'),
                      Container(
                        width: 220.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 17,
                  right: 10,
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: Colors.red,
                          ),
                          height: 30,
                          width: 40,
                          child: IconButton(
                              color: Colors.red,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 16,
                                color: Colors.white,
                              )))))
            ],
          ),
        ));
      },
    );
  }
}
