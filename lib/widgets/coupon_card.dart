import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class CouponCard extends StatelessWidget {
  final String price;
  final String title;
  final String description;
  final VoidCallback? onApply;
  final VoidCallback? onReadMore;

  const CouponCard({
    super.key,
    required this.price,
    required this.title,
    required this.description,
    this.onApply,
    this.onReadMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingSmall,
      ),
      height: AppConstants.couponHeight,
      decoration: BoxDecoration(
        color: AppColors.couponbody,

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left brown strip with rotated price
          _buildPriceStrip(price),
          // Main coupon body
          Expanded(child: _buildCouponBody(context)),
        ],
      ),
    );
  }

  Widget _buildPriceStrip(String price) {
    return Container(
      width: AppConstants.couponStripWidth,
      decoration: const BoxDecoration(color: AppColors.card),
      child: Stack(
        children: [
          // Perforated edge effect on the right side
          Positioned(
            right: -4,
            top: 0,
            bottom: 0,
            child: CustomPaint(
              size: const Size(8, double.infinity),
              painter: PerforatedEdgePainter(),
            ),
          ),
          // Rotated price text
          Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                price,
                style: GoogleFonts.libreCaslonText(
                  color: AppColors.white,
                  fontSize: AppConstants.fontSizeXXLarge + 3,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCouponBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Apply button row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.lexendDeca(
                    fontSize: AppConstants.fontSizeXLarge,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: onApply ?? () {},
                icon: Image.asset(
                  'assets/images/coupon-bold.png',
                  width: 18,
                  height: 18,
                ),
                label: Text(
                  'Apply',
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w600,
                    color: AppColors.brown,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          // Description
          Expanded(
            child: Text(
              description,
              style: GoogleFonts.lexendDeca(
                fontSize: AppConstants.fontSizeMedium,
                color: AppColors.lightGrey,

                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          Divider(
            color: AppColors.lightGrey.withOpacity(0.2),
            thickness: 1,
            height: 1,
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          // Read more link
          GestureDetector(
            onTap: onReadMore ?? () {},
            child: Text(
              'Read more',
              style: GoogleFonts.lexendDeca(
                fontSize: AppConstants.fontSizeMedium,
                color: AppColors.lightGrey,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Custom painter for perforated edge effect (tear-off ticket style)
class PerforatedEdgePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Draw white rectangles to create perforated edge effect
    final paint = Paint()
      ..color = AppColors.couponbody
      ..style = PaintingStyle.fill;

    const double rectWidth = 5.5;
    const double rectHeight = 6.0;
    const double spacing = 15.0;
    const double startOffset = 10.0;

    // Draw rectangles along the edge to create perforation effect
    for (double y = startOffset; y < size.height; y += spacing) {
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(size.width / 2, y),
          width: rectWidth,
          height: rectHeight,
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
