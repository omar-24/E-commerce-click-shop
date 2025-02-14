import 'package:flutter/material.dart';

class RememberCheckbox extends StatefulWidget {
  const RememberCheckbox({super.key});

  @override
  State<RememberCheckbox> createState() => _RememberCheckboxState();
}

class _RememberCheckboxState extends State<RememberCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
          activeColor: Colors.grey, // Checkbox color
        ),
        Text(
          "Remember this device",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
