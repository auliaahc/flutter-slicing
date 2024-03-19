import 'package:banking_app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarGlobalWidget extends StatelessWidget {
  const BottomNavigationBarGlobalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorConstant.whiteColor,
      unselectedItemColor: ColorConstant.whiteColor,
      backgroundColor: ColorConstant.navbarColor,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.card_giftcard_rounded,
          ),
          label: 'Card',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.done_all_sharp,
          ),
          label: 'Transaction',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
