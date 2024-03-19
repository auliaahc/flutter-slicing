import 'package:banking_app/page/home/widget/menu_home_widget.dart';
import 'package:flutter/material.dart';

class ListMenuHomeWidget extends StatelessWidget {
  const ListMenuHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuHomeWidget(
          iconData: Icons.money,
          label: 'Fund Transfer',
        ),
        MenuHomeWidget(
          iconData: Icons.add,
          label: 'Add Money',
        ),
        MenuHomeWidget(
          iconData: Icons.more_horiz,
          label: 'More',
        ),
      ],
    );
  }
}
