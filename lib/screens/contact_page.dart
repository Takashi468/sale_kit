import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/contact_action_row.dart';
import '../widgets/staff_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          children: [
            const Text(
              'สนใจสั่งผลิต',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 20),
            const ContactActionRow(
              icon: Icons.phone_outlined,
              title: 'โทร',
              subtitle: '02-xxx-xxx',
            ),
            const SizedBox(height: 12),
            const ContactActionRow(
              icon: Icons.chat_bubble_outline,
              title: 'แชททาง LINE',
              subtitle: '@xoxoxoxo',
            ),
            const SizedBox(height: 12),
            const ContactActionRow(
              icon: Icons.map_outlined,
              title: 'เยี่ยมชมโรงงาน',
              subtitle: 'กรุงเทพฯ',
            ),
            const SizedBox(height: 28),
            const Text(
              'พนักงานขาย',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 12),
            const StaffCard(
              name: 'กัลญารัตน์ ยะตัน',
              phone: '056860405604-0',
              avatarImagePath: 'assets/images/staff_bell.png',
            ),
            const SizedBox(height: 12),
            const StaffCard(
              name: 'จีรพล เย่า',
              phone: '056860405622-2',
              avatarImagePath: 'assets/images/staff_russell.png',
            ),
          ],
        ),
      ),
    );
  }
}
