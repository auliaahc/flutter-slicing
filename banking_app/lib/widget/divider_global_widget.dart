import 'package:banking_app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class DividerGlobalWidget extends StatelessWidget {
  final double? height;
  final Color? dividerColor;
  const DividerGlobalWidget({
    super.key,
    this.height,
    this.dividerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 0.5,
      color: dividerColor ?? ColorConstant.gray60,
    );
  }
}
