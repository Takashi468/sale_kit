import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// A bordered frame standing in for an image that hasn't been added yet.
class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 12,
    this.icon = Icons.image_outlined,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.surfaceMuted,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.15)),
      ),
      alignment: Alignment.center,
      child: Icon(icon, color: AppColors.inkMuted, size: 28),
    );
  }
}
