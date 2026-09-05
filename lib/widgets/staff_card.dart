import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({
    super.key,
    required this.name,
    required this.phone,
    this.avatarImagePath,
  });

  final String name;
  final String phone;
  final String? avatarImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border, width: 1.4),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.surfaceMuted,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.border.withValues(alpha: 0.15)),
              image: avatarImagePath != null
                  ? DecorationImage(
                      image: AssetImage(avatarImagePath!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            alignment: Alignment.center,
            child: avatarImagePath == null
                ? const Icon(
                    Icons.person_outline,
                    color: AppColors.inkMuted,
                    size: 22,
                  )
                : null,
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.ink,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                phone,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.ink,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
