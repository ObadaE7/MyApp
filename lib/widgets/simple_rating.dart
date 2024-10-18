import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:hugeicons/hugeicons.dart';

class SimpleRating extends StatelessWidget {
  final double rating;
  const SimpleRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          HugeIcons.strokeRoundedStar,
          color: Colors.amber,
          size: 20.0,
        ),
        const SizedBox(width: 5.0),
        Text(
          '$rating',
          style: TextStyle(
            fontSize: AppSizes.kTextSubheading - 2,
            color: AppColors.primaryDark,
          ),
        ),
      ],
    );
  }
}
