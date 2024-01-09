import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  static List<CategoryEntity> courseCategories = [
    CategoryEntity(
      id: '1',
      name: 'Mathematics',
      icon: AppImages.icMathematics,
      color: const Color(0xFFFF4070),
    ),
    CategoryEntity(
      id: '2',
      name: 'Chemistry',
      icon: AppImages.icChemistry,
      color: const Color(0xFFFFBD69),
    ),
    CategoryEntity(
      id: '3',
      name: 'Literature',
      icon: AppImages.icLiterature,
      color: const Color(0xFFE85DC0),
    ),
    CategoryEntity(
      id: '4',
      name: 'Biology',
      icon: AppImages.icBiology,
      color: const Color(0xFF49B583),
    ),
    CategoryEntity(
      id: '5',
      name: 'Physics',
      icon: AppImages.icPhysics,
      color: const Color(0xFF7F86FF),
    ),
  ];
}
