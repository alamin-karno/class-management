import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultSpace,
        top: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Md. Al-Amin',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.xs),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'You’ve got\n',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    TextSpan(
                      text: '4 tasks today',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .apply(color: AppColors.green),
                    ),
                  ],
                ),
              )
            ],
          ),
          const NotificationCountWidget(),
        ],
      ),
    );
  }
}
