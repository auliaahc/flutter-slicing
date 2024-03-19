import 'package:banking_app/constant/color_constant.dart';
import 'package:banking_app/constant/text_style_constant.dart';
import 'package:flutter/material.dart';

class MenuHomeWidget extends StatelessWidget {
  final IconData iconData;
  final String label;
  const MenuHomeWidget({
    super.key,
    required this.iconData,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.shapeColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          width: 60,
          height: 60,
          child: Icon(
            iconData,
            size: 25.71,
          ),
        ),
        const SizedBox(height: 13),
        Text(
          label,
          style: TextStyleConstant.headline5.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
