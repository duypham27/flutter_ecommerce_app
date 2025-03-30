import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circural_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DChoiceChip extends StatelessWidget {
  const DChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = DHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? DColors.white : null),
        avatar:
            isColor
                ? DCircularContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: DHelperFunctions.getColor(text)!,
                )
                : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        // Make icon in the center
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? DHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
