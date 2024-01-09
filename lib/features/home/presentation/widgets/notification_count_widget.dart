import 'package:class_management/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class NotificationCountWidget extends StatelessWidget {
  const NotificationCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: AppSizes.sm, right: AppSizes.sm),
          child: Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage(AppImages.profileImage1),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 3,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: AppColors.white,
                ),
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              ),
            ),
          ),
        ),
        Positioned(
          right: 4,
          top: 4,
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Container(
              width: 14,
              height: 14,
              decoration: const BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '1',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 9,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
