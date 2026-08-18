import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/image_placeholder.dart';
import '../widgets/stat_badge.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          children: [
            const Text(
              'เกี่ยวกับเรา',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'ผู้ผลิต OEM อาหารเสริมและเครื่องสำอางครบวงจร ตั้งแต่พัฒนาสูตร '
              'ผลิต ไปจนถึงบรรจุภัณฑ์ ด้วยทีมงานมืออาชีพและมาตรฐานคุณภาพระดับโลก',
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
              'รางวัลและการรับรอง',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Expanded(
                  child: ImagePlaceholder(
                    height: 140,
                    icon: Icons.workspace_premium_outlined,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ImagePlaceholder(
                    height: 140,
                    icon: Icons.workspace_premium_outlined,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            const Text(
              'มาตรฐานโรงงาน',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Expanded(child: ImagePlaceholder(height: 100)),
                SizedBox(width: 12),
                Expanded(child: ImagePlaceholder(height: 100)),
                SizedBox(width: 12),
                Expanded(child: ImagePlaceholder(height: 100)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
