import 'package:class_management/core/common/common.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';

class ScheduleCourseListViewWidget extends StatelessWidget {
  const ScheduleCourseListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppListViewLayout(
      itemCount: ScheduleModel.scheduleList.length,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return ScheduleCourseWidget(schedule: ScheduleModel.scheduleList[index]);
      },
    );
  }
}
