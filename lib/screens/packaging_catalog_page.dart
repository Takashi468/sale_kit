import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import 'packaging_type_page.dart';

/// Packaging-type grid (บรรจุภัณฑ์เครื่องสำอาง.png / บรรจุภัณฑ์อาหารเสริม.png):
/// back arrow + title, 2-column icon cards.
class PackagingCatalogPage extends StatelessWidget {
  const PackagingCatalogPage({super.key, required this.catalog});

  final PackagingCatalog catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.ink,
        title: Text(catalog.title),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: catalog.types.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            final type = catalog.types[index];
            final coverImage =
                type.coverImagePath ??
                type.photos
                    .map((photo) => photo.imagePath)
                    .firstWhere((path) => path != null, orElse: () => null);
            return InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PackagingTypePage(type: type),
                  ),
                );
              },
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
                        Expanded(
                          child: coverImage != null
                              ? Image.asset(
                                  coverImage,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )
                              : Container(
                                  width: double.infinity,
                                  color: AppColors.accent.withValues(
                                    alpha: 0.12,
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.inventory_2_outlined,
                                    color: AppColors.accent,
                                    size: 36,
                                  ),
                                ),
                        ),
                        Container(
                          width: double.infinity,
                          color: AppColors.surfaceMuted,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                type.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                  color: AppColors.ink,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 2),
                              Text(
                                type.subtitle,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: AppColors.inkMuted,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
