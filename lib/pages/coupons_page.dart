import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/app_header.dart';
import '../widgets/booking_summary.dart';
import '../widgets/coupon_card.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            AppHeader(),
            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: AppConstants.paddingMedium),
                    // Regular coupons
                    CouponCard(
                      price: '₹6,900',
                      title: 'LONGSTAY',
                      description:
                          '15% off when you book for 5 days\n or more and 20% off when you\n book for 30 days or more.',
                    ),
                    CouponCard(
                      price: '₹6,900',
                      title: 'LONGSTAY',
                      description:
                          '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
                    ),
                    // Payment offers section
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        AppConstants.paddingMedium,
                        AppConstants.paddingLarge,
                        AppConstants.paddingMedium,
                        AppConstants.paddingSmall,
                      ),
                      child: Text(
                        'Payment offers:',
                        style: GoogleFonts.lexendDeca(
                          fontSize: AppConstants.fontSizeLarge,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    CouponCard(
                      price: '₹6,900',
                      title: 'LONGSTAY',
                      description:
                          '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
                    ),
                    // Bottom spacing for booking summary
                    const SizedBox(height: AppConstants.paddingLarge),
                  ],
                ),
              ),
            ),
            // Fixed booking summary at bottom
            const BookingSummary(),
          ],
        ),
      ),
    );
  }
}
