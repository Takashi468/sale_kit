import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import '../widgets/category_card.dart';
import 'category_page.dart';
import 'packaging_catalog_page.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          children: [
            const Text(
              'สินค้าและบรรจุภัณฑ์',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'เลือกตามผลิตภัณฑ์',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 12),
            ...formulationCategories.map(
              (category) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CategoryCard(
                  icon: category.key == 'supplement'
                      ? Icons.medication_outlined
                      : Icons.water_drop_outlined,
                  title: category.title,
                  subtitle: category.subtitle,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            CategoryPage(initialCategory: category),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'เลือกตามบรรจุภัณฑ์',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 12),
            ...packagingCatalogs.map(
              (catalog) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CategoryCard(
                  icon: Icons.inventory_2_outlined,
                  title: catalog.title,
                  subtitle: catalog.types.map((t) => t.title).join(', '),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => PackagingCatalogPage(catalog: catalog),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
