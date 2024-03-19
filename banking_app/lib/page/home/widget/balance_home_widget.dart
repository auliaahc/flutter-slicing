import 'package:banking_app/constant/text_style_constant.dart';
import 'package:banking_app/data/personal_data.dart';
import 'package:flutter/material.dart';

class BalanceHomeWidget extends StatelessWidget {
  const BalanceHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total balance',
            style: TextStyleConstant.headline5,
          ),
          Text(
            PersonalData.data['balance']!,
            style: TextStyleConstant.headline1,
          ),
        ],
      ),
    );
  }
}
