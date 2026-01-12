import 'package:flutter/material.dart';
import 'package:pathway/core/theme.dart';
import 'package:pathway/core/app_dimens.dart';

class WhiteCard extends StatelessWidget {
  final Widget? child;
  final EdgeInsets padding;

  const WhiteCard({super.key, this.child, this.padding = const EdgeInsets.all(24)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppDimens.radiusCard),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            offset: const Offset(0, 14),
            blurRadius: 29,
            spreadRadius: -6
            )
          ]
      ),
    );
  }
}
