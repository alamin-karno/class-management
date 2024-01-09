import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseCategoryWidget extends StatelessWidget {
  final CategoryEntity category;

  const CourseCategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm),
      child: Container(
        width: 152,
        height: 120,
        decoration: ShapeDecoration(
          color: category.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: category.color.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              category.icon,
              height: 40,
              width: 40,
            ),
            const SizedBox(height: AppSizes.xs),
            Text(
              category.name,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .apply(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
