import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/features/home/home.dart';
import 'package:flutter/material.dart';

class ScheduleModel {
  static List<ScheduleEntity> scheduleList = [
    ScheduleEntity(
      id: '1',
      subject: 'Physics',
      chapter: 'Chapter 3: Force',
      time: '09:00 AM',
      trainer: 'Ismail Titas',
      trainerImage: AppImages.profileImage2,
      medium: 'Google Meet',
      icon: AppImages.icPhysics,
      color: const Color(0xFF7F86FF),
    ),
    ScheduleEntity(
      id: '2',
      subject: 'Mathematics',
      chapter: 'Chapter 5: Statistics',
      time: '08:00 PM',
      trainer: 'Pronob Mozumder',
      trainerImage: AppImages.profileImage3,
      medium: 'Google Meet',
      icon: AppImages.icMathematics,
      color: const Color(0xFFFF4070),
    ),
  ];
}
