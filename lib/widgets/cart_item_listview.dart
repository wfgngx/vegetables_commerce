import 'package:flutter/material.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(4),
            child: Card(
                elevation: 20,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('-'),
                            Text('2'),
                            Text('+'),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text('24.15'),
                            Text('كمثري امريكي'),
                            Text('1Kg')
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                )));
      },
    );
  }
}
