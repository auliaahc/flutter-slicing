import 'package:banking_app/constant/text_style_constant.dart';
import 'package:banking_app/data/personal_data.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/constant/color_constant.dart';

class BannerHomeWidget extends StatelessWidget {
  const BannerHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            color: ColorConstant.gray60,
          ),
          child: Text(PersonalData.data['name']![0]),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              PersonalData.data['name']!,
              style: TextStyleConstant.headline4,
            ),
            Text(
              PersonalData.data['descriptionProfile']!,
              style: TextStyleConstant.headline6,
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: ColorConstant.shapeColor,
          ),
          child: Icon(
            Icons.notifications,
            color: ColorConstant.whiteColor,
          ),
        ),
      ],
    );
  }
}
