import 'package:flutter/material.dart';

class FilterHomeWidget extends StatelessWidget {
  final List<String> listFilter;
  const FilterHomeWidget({
    super.key,
    required this.listFilter,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: double.infinity,
      child: ListView.builder(
        itemCount: listFilter.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.only(right: 20),
            height: 24,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFF303030),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Text(listFilter[index]),
          );
        },
      ),
    );
  }
}
