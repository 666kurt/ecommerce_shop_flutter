import 'package:flutter/material.dart';

import '../widgets/custom_icon_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              size: 68,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 25),
            Text(
              "MINIMAL SHOP",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Made with Flutter ♡",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            CustomIconButton(
              onTap: () {
                Navigator.pushNamed(context, '/main_screen');
              },
              icon: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
