import 'package:class_management/core/common/common.dart';
import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/cupertino.dart';

class CourseListViewWidget extends StatelessWidget {
  const CourseListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: AppListViewLayout(
        itemCount: CategoryModel.courseCategories.length,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace - AppSizes.sm,
        ),
        itemBuilder: (context, index) {
          return CourseCategoryWidget(
            category: CategoryModel.courseCategories[index],
          );
        },
      ),
    );
  }
}
