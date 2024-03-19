import 'package:banking_app/constant/color_constant.dart';
import 'package:banking_app/page/home/widget/balance_home_widget.dart';
import 'package:banking_app/page/home/widget/banner_home_widget.dart';
import 'package:banking_app/page/home/widget/list_filter_home_widget.dart';
import 'package:banking_app/page/home/widget/list_menu_home_widget.dart';
import 'package:banking_app/page/home/widget/list_recent_activity_home_widget.dart';
import 'package:banking_app/page/home/widget/subheader_activity_home_widget.dart';
import 'package:banking_app/widget/bottom_navigation_bar_global_widget.dart';
import 'package:banking_app/widget/divider_global_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.scaffoldColor,
      bottomNavigationBar: const BottomNavigationBarGlobalWidget(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                BannerHomeWidget(),
                SizedBox(height: 30),
                BalanceHomeWidget(),
                SizedBox(height: 20),
                DividerGlobalWidget(),
                SizedBox(height: 20),
                ListMenuHomeWidget(),
                SizedBox(height: 36),
                SubheaderActivityHomeWidget(),
                SizedBox(height: 29),
                ListFilterHomeWidget(),
                SizedBox(height: 20),
                ListRecentActivityHomeWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
