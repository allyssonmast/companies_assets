import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'choise_widget.dart';

class ChoiceChipDemo extends StatelessWidget {
  final int selectedChoice;
  final Function(int) onSelected;

  const ChoiceChipDemo(
      {super.key, required this.selectedChoice, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    var list = [''.tr, 'sensores'.tr, 'critico'.tr];
    var listIcons = [
      Icons.all_inclusive,
      Icons.electric_bolt_outlined,
      Icons.warning_amber_rounded
    ];
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(list.length, (int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
            child: ChoiceChip(
              selectedColor: context.theme.primaryColor,
              showCheckmark: false,
              label: ChoiseWidget(
                title: list[index],
                iconData: listIcons[index],
                isSelected: selectedChoice == index,
              ),
              selected: selectedChoice == index,
              onSelected: (bool selected) {
                onSelected(selected ? index : 0);
              },
            ),
          );
        }),
      ),
    );
  }
}
