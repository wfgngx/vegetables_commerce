import 'package:flutter/material.dart';
import 'package:vegetables_commerce/const.dart';
import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/home_screen.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        child: const CircleAvatar(
          backgroundColor: secondSmallRadius,
          backgroundImage: AssetImage('assets/images/vegetables_cart.jpg'),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          ]),
      body: const HomeScreen(),
    );
  }
}
