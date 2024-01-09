import 'package:flutter/material.dart';

class AppListViewLayout extends StatelessWidget {
  final int itemCount;

  final Axis scrollDirection;

  final ScrollPhysics physics;

  final EdgeInsets padding;

  final Widget? Function(BuildContext, int) itemBuilder;

  const AppListViewLayout({
    super.key,
    required this.itemCount,
    this.physics = const ScrollPhysics(),
    this.scrollDirection = Axis.horizontal,
    this.padding = EdgeInsets.zero,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: physics,
      scrollDirection: scrollDirection,
      padding: padding,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
