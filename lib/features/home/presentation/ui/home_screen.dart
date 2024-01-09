import 'package:class_management/core/common/common.dart';
import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeAppBar(),
            SizedBox(
              height: AppSizes.spaceBtwSections + AppSizes.spaceBtwItems,
            ),
            SectionHeadingWidget(
              title: 'Courses',
              subTitle: 'Your running subjects',
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            CourseListViewWidget(),
            SizedBox(height: AppSizes.spaceBtwSections),
            SectionHeadingWidget(
              title: 'Your schedule',
              subTitle: 'Upcoming classes and tasks',
            ),
          ],
        ),
      ),
    );
  }
}
