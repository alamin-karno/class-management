import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class ScheduleCourseWidget extends StatelessWidget {
  final ScheduleEntity schedule;

  const ScheduleCourseWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace,
        vertical: AppSizes.sm,
      ),
      child: Container(
        width: double.infinity,
        height: 174,
        padding: const EdgeInsets.all(AppSizes.md + AppSizes.xs),
        decoration: ShapeDecoration(
          color: schedule.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: schedule.color.withOpacity(0.1),
              blurRadius: 24,
              offset: const Offset(0, 12),
              spreadRadius: -4,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  schedule.subject,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: AppColors.white),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(AppImages.icDotMenu),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      schedule.chapter,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.white),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Row(
                      children: [
                        const Icon(
                          Iconsax.clock5,
                          color: Colors.white,
                          size: AppSizes.iconSm,
                        ),
                        const SizedBox(width: AppSizes.xs),
                        Text(
                          schedule.time,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(color: AppColors.white)
                              .copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.sm),
                    Row(
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(schedule.trainerImage),
                              fit: BoxFit.fill,
                            ),
                            shape: const OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: AppSizes.xs),
                        Text(
                          schedule.trainer,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(color: AppColors.white)
                              .copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.sm),
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.icGoogleMeet),
                        const SizedBox(width: AppSizes.xs),
                        Text(
                          schedule.medium,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(color: AppColors.white)
                              .copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 5.0),
                  child: SvgPicture.asset(
                    schedule.icon,
                    height: 100,
                    width: 92,
                    color: const Color(0xFF545CEB),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
