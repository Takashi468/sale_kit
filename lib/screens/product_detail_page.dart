import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import '../widgets/image_placeholder.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.item});

  final FormulationItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.ink,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          children: [
            item.imagePath != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      item.imagePath!,
                      height: 260,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
                : const ImagePlaceholder(
                    height: 260,
                    icon: Icons.image_outlined,
                    borderRadius: 18,
                  ),
            const SizedBox(height: 20),
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.subtitle,
              style: const TextStyle(fontSize: 14, color: AppColors.inkMuted),
            ),
            if (item.description != null) ...[
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surfaceMuted,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  item.description!,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: AppColors.ink,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
