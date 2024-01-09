import 'package:class_management/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class SectionHeadingWidget extends StatelessWidget {
  final String title, subTitle;

  const SectionHeadingWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: AppColors.darkGrey.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }
}
