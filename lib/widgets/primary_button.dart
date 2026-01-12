import 'package:flutter/material.dart';
import 'package:pathway/core/app_dimens.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool filled;
  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.filled = true,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(AppDimens.radiusField);
    return SizedBox(
      height: AppDimens.btnHeight,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: radius,
          gradient: filled
              ? const LinearGradient(
                  colors: [Color(0xFF3A66FF), Color(0xFF6586FF)],
                )
              : null,
          border: filled ? null : Border.all(color: Colors.white, width: 1.2),
          color: filled ? null : Colors.transparent,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: radius),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
