import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool showSeeAll;

  const SectionTitle({
    super.key,
    required this.title,
    this.showSeeAll = false,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: AppSizes.kTextHeading - 2.0,
            color: AppColors.primaryDark,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (showSeeAll)
          Text(
            'See All',
            style: TextStyle(
              fontSize: AppSizes.kTextSubheading,
              color: AppColors.primaryGreen,
            ),
          ),
      ],
    );
  }
}
