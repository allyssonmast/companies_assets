import 'package:flutter/material.dart';

class ChoiseWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool isSelected;
  const ChoiseWidget(
      {super.key,
      required this.title,
      required this.iconData,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: isSelected ? Colors.white : null,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: TextStyle(color: isSelected ? Colors.white : null),
        ),
      ],
    );
  }
}
