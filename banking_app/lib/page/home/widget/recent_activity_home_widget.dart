import 'package:banking_app/constant/color_constant.dart';
import 'package:banking_app/constant/text_style_constant.dart';
import 'package:flutter/material.dart';

class RecentActivityHomeWidget extends StatelessWidget {
  final bool isIncoming;
  final String subjects;
  final String categories;
  final String dates;
  final String nominals;
  const RecentActivityHomeWidget({
    super.key,
    required this.isIncoming,
    required this.subjects,
    required this.categories,
    required this.dates,
    required this.nominals,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: ColorConstant.purpleColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: isIncoming == true
                  ? const Icon(Icons.arrow_downward_outlined)
                  : const Icon(Icons.arrow_upward_outlined),
            ),
            const SizedBox(width: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(subjects, style: TextStyleConstant.headline4),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '•',
                          style: TextStyle(color: ColorConstant.gray60),
                        ),
                      ),
                      Text(
                        categories,
                        style: TextStyleConstant.headline4.copyWith(
                          color: ColorConstant.gray60,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    dates,
                    style: TextStyleConstant.headline6,
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          nominals,
          style: TextStyleConstant.headline4,
        ),
      ],
    );
  }
}
