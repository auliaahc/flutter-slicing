import 'package:banking_app/data/personal_data.dart';
import 'package:banking_app/page/home/widget/recent_activity_home_widget.dart';
import 'package:flutter/material.dart';

class ListRecentActivityHomeWidget extends StatelessWidget {
  const ListRecentActivityHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: PersonalData.activityHistory.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            RecentActivityHomeWidget(
              isIncoming: true,
              subjects: PersonalData.activityHistory[index]['subject']!,
              categories: PersonalData.activityHistory[index]['category']!,
              dates: PersonalData.activityHistory[index]['date']!,
              nominals: PersonalData.activityHistory[index]['nominal']!,
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
