import 'package:flutter/material.dart';
import 'package:banking_app/constant/text_style_constant.dart';

class SubheaderGlobalWidget extends StatelessWidget {
  final String text;
  const SubheaderGlobalWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyleConstant.headline3,
      ),
    );
  }
}
