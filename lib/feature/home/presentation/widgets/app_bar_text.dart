import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        children: [
          const TextSpan(
            text: 'Shop the ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'latest',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          const TextSpan(
            text: ' fashion, stylish,\n comfortable',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'perfectly you !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
