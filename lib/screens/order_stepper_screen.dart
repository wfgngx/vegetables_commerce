import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';

class OrderStepper extends StatefulWidget {
  const OrderStepper({Key? key}) : super(key: key);

  @override
  State<OrderStepper> createState() => _OrderStepperState();
}

class _OrderStepperState extends State<OrderStepper> {
  List<TextDto> orderList = [
    TextDto("Your order has been placed", "Fri, 25th Mar '22 - 10:47pm"),
    TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
    TextDto("Your item has been picked up by courier partner.",
        "Tue, 29th Mar '22 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
    TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),

      appBar: AppBar(
        centerTitle: true,
        title: const Text("ترتيب المسار"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: OrderTracker(
          status: Status.delivered,
          activeColor: Colors.green,
          inActiveColor: Colors.grey[300],
          orderTitleAndDateList: orderList,
          shippedTitleAndDateList: shippedList,
          outOfDeliveryTitleAndDateList: outOfDeliveryList,
          deliveredTitleAndDateList: deliveredList,
        ),
      ),
    );
  }
}
