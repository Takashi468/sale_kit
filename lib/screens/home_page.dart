import 'package:flutter/material.dart';

import '../data/catalog_data.dart';
import '../theme/app_colors.dart';
import '../widgets/category_card.dart';
import '../widgets/stat_badge.dart';
import 'category_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          children: [
            const Text(
              'รับผลิต OEM\nอาหารเสริม & เครื่องสำอาง',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
                height: 1.25,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'สารสกัดคุณภาพระดับโลก บรรจุภัณฑ์หลากหลาย\nพร้อมทีมพัฒนาสูตรมืออาชีพ',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.inkMuted,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                StatBadge(value: '120', label: 'สารสกัด'),
                SizedBox(width: 12),
                StatBadge(value: '15+ ปี', label: 'ประสบการณ์'),
              ],
            ),
            const SizedBox(height: 28),
            const Text(
              'เลือกดูตามหมวด',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 12),
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
