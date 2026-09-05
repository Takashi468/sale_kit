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
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.ink,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'สอบถามราคา / ขอใบเสนอราคา',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
