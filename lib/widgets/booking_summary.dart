import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class BookingSummary extends StatelessWidget {
  final VoidCallback? onReserve;

  const BookingSummary({super.key, this.onReserve});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Green banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.paddingMedium,
              vertical: AppConstants.paddingMedium - 10,
            ),
            decoration: const BoxDecoration(color: AppColors.green),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/offer_filled.png',
                  width: 28,
                  height: 28,
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  'Book now & Unlock exclusive rewards!',
                  style: GoogleFonts.lexendDeca(
                    color: AppColors.white,
                    fontSize: AppConstants.fontSizeMedium,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // Booking details
          Padding(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Price section
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₹19,500',
                            style: GoogleFonts.lexendDeca(
                              fontSize: AppConstants.fontSizeLarge,
                              color: AppColors.red,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: AppConstants.paddingSmall),
                          Text(
                            '₹16,000',
                            style: GoogleFonts.lexendDeca(
                              fontSize: AppConstants.fontSizeXLarge,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(width: AppConstants.paddingSmall),
                          Flexible(
                            child: Text(
                              'for 2 nights',

                              style: GoogleFonts.lexendDeca(
                                fontSize: AppConstants.fontSizeMedium + 1,
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                      // Date and guest info
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '24 Apr - 26 Apr | 8 guests',
                            style: GoogleFonts.lexendDeca(
                              fontSize: AppConstants.fontSizeMedium,
                              color: Color(0xff4B4E4B),
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const SizedBox(width: AppConstants.paddingSmall / 2),
                          Image.asset(
                            'assets/images/edit.png',
                            width: 16,
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 120,
                    maxWidth: 140,
                  ),
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: onReserve ?? () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.card,
                        foregroundColor: AppColors.white,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        'Reserve',
                        style: GoogleFonts.lexendDeca(
                          fontSize: AppConstants.fontSizeLarge,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.paddingMedium,
              vertical: AppConstants.paddingSmall / 2,
            ),
            child: Container(
              width: 60,
              height: 6,
              decoration: BoxDecoration(
                color: AppColors.lightGrey.withOpacity(0.6),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
