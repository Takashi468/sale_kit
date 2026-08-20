import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import '../widgets/image_placeholder.dart';

/// Photo list for one packaging type (กระปุกเครื่องสำอาง.png, ขวดแก้ว.png,
/// ขวดปั๊ม.png, ซอง Sachet.png, หลอด.png, กล่อง.png, supplement bottle.png):
/// back arrow + title, vertical stack of photo + caption band cards.
class PackagingTypePage extends StatelessWidget {
  const PackagingTypePage({super.key, required this.type});

  final PackagingType type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.ink,
        title: Text(type.title),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: type.photos.length,
          separatorBuilder: (_, _) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final photo = type.photos[index];
            return Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.border, width: 1.2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  photo.imagePath != null
                      ? Image.asset(
                          photo.imagePath!,
                          height: 170,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )
                      : const ImagePlaceholder(
                          height: 170,
                          borderRadius: 0,
                          width: double.infinity,
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
                          photo.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: AppColors.ink,
                          ),
                        ),
                        if (photo.subtitle.isNotEmpty) ...[
                          const SizedBox(height: 2),
                          Text(
                            photo.subtitle,
                            style: const TextStyle(
                              fontSize: 13,
                              color: AppColors.inkMuted,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
