import 'package:companies_assets/app/modules/assets/views/widget/choise_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoiceChipDemo extends StatelessWidget {
  final int selectedChoice;
  final ValueChanged<int> onSelected;
  const ChoiceChipDemo(
      {super.key, required this.selectedChoice, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    var list = ['Todos', 'Sensor de Energia', 'Crítico'];
    var listIcons = [
      Icons.web_asset,
      Icons.electric_bolt_outlined,
      Icons.info_outline
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Wrap(
        spacing: 8.0,
        children: List<Widget>.generate(list.length, (int index) {
          return ChoiceChip(
            selectedColor: context.theme.primaryColor,
            showCheckmark: false,
            label: ChoiseWidget(
              title: list[index],
              iconData: listIcons[index],
              isSelected: selectedChoice == index,
            ),
            selected: selectedChoice == index,
            onSelected: (bool selected) {
              if (selected) {
                onSelected(index);
              }
            },
          );
        }),
      ),
    );
  }
}
