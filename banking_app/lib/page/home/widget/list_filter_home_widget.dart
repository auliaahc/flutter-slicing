import 'package:banking_app/page/home/widget/filter_home_widget.dart';
import 'package:flutter/material.dart';

const filter = ['This Day', 'This Week', 'This Month', '6 Month'];

class ListFilterHomeWidget extends StatelessWidget {
  const ListFilterHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const FilterHomeWidget(listFilter: filter);
  }
}
