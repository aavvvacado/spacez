import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class AppHeader extends StatelessWidget {
  final VoidCallback? onMenuTap;
  final VoidCallback? onBackTap;

  const AppHeader({super.key, this.onMenuTap, this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top status bar area
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingMedium,
            vertical: AppConstants.paddingSmall,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SPACEZ Logo
              Image.asset(
                'assets/images/logo.png',
                height: 32,
                width: 120,
                fit: BoxFit.contain,
              ),
              // Hamburger menu
              IconButton(
                iconSize: 28,
                icon: const Icon(Icons.menu),
                onPressed: onMenuTap ?? () {},
                color: AppColors.brown,
              ),
            ],
          ),
        ),
        const SizedBox(height: 1),
        // Navigation bar with back arrow and title
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingMedium,
            vertical: AppConstants.paddingSmall,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: onBackTap ?? () {},
                  color: Color(0xff646864),
                ),
              ),

              Text(
                'Coupons',
                style: GoogleFonts.lexendDeca(
                  fontSize: AppConstants.fontSizeXXLarge,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
