import 'package:flutter/material.dart';

class ScheduleEntity {
  final String id;
  final String subject;
  final String chapter;
  final String time;
  final String trainer;
  final String trainerImage;
  final String medium;
  final String icon;
  final Color color;

  ScheduleEntity({
    required this.id,
    required this.subject,
    required this.chapter,
    required this.time,
    required this.trainer,
    required this.trainerImage,
    required this.medium,
    required this.icon,
    required this.color,
  });
}
