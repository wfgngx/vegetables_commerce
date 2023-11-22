import 'package:flutter/material.dart';

import '../screens/bottom_nav_bar_screens/home_screen.dart';

class YourErrorWidget extends StatelessWidget {
  const YourErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              color: Colors.red,
              size: 50.0,
            ),
            const SizedBox(height: 10.0),
            Text(
              'An error occurred',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // You can add any action you want, such as restarting the app or navigating to a specific screen.
                // For example, you can use Navigator to push a new screen:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
