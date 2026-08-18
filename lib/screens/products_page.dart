import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import '../widgets/category_card.dart';
import 'category_page.dart';

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
            const SizedBox(height: 4),
            const Text(
              'เลือกหมวดสินค้าเพื่อดูตัวเลือกบรรจุภัณฑ์ทั้งหมด',
              style: TextStyle(fontSize: 13, color: AppColors.inkMuted),
            ),
            const SizedBox(height: 20),
            ...productCategories.map(
              (category) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CategoryCard(
                  icon: category.icon == 'supplement'
                      ? Icons.medication_outlined
                      : Icons.water_drop_outlined,
                  title: category.title,
                  subtitle: category.subtitle,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CategoryPage(category: category),
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
