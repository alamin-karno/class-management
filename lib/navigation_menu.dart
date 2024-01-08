import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/core/utils/helpers/app_helper_functions.dart';
import 'package:class_management/features/home/presentation/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screen[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: isDark ? AppColors.black : AppColors.white,
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: controller.onDestinationSelected,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              selectedIcon: Icon(Iconsax.home5),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.people),
              selectedIcon: Icon(Iconsax.people5),
              label: 'Group',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              selectedIcon: Icon(Iconsax.user4),
              label: 'Account',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.search_normal),
              selectedIcon: Icon(Iconsax.search_normal4),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> currentIndex = 0.obs;

  void onDestinationSelected(int index) {
    currentIndex.value = index;
  }

  final screen = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
}
