import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import '../widgets/image_placeholder.dart';

/// รางวัล1/2.png: "สารสกัดได้รับรางวัล" — ties back to the home page's
/// "120 สารสกัด" badge.
class ExtractsPage extends StatelessWidget {
  const ExtractsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          children: [
            const Text(
              'สารสกัดได้รับรางวัล',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'นวัตกรรมระดับโลกที่ช่วยยกระดับผลิตภัณฑ์',
              style: TextStyle(fontSize: 13, color: AppColors.inkMuted),
            ),
            const SizedBox(height: 20),
            ...extractIngredients.map(
              (extract) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.border, width: 1.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          extract.imagePath != null
                              ? Image.asset(
                                  extract.imagePath!,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )
                              : const ImagePlaceholder(
                                  height: 150,
                                  borderRadius: 0,
                                  width: double.infinity,
                                  icon: Icons.eco_outlined,
                                ),
                          Container(
                            width: double.infinity,
                            color: AppColors.surfaceMuted,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  extract.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: AppColors.ink,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  extract.description,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: AppColors.inkMuted,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
