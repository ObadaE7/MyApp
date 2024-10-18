import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';

class PromotionBanner extends StatelessWidget {
  final String title;
  final String buttonText;
  final String imagePath;
  final double imageWidth;
  final double imageHeight;
  final double imageTopPosition;
  final double imageRightPosition;

  const PromotionBanner({
    super.key,
    required this.title,
    required this.buttonText,
    required this.imagePath,
    required this.imageWidth,
    required this.imageHeight,
    this.imageTopPosition = 0.0,
    this.imageRightPosition = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 170.0,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.kPaddingNormal,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSizes.kBorderRadiusLarge,
            ),
            color: AppColors.secondaryLight,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 180,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: AppColors.primaryDark,
                        fontSize: AppSizes.kTextSubheading + 4.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.kPaddingNormal,
                      vertical: AppSizes.kPaddingNormal / 2.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSizes.kBorderRadiusLarge,
                      ),
                      color: AppColors.primaryGreen,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryGreen.withOpacity(0.5),
                          blurRadius: 10.0,
                          offset: const Offset(0, 10.0),
                        ),
                      ],
                    ),
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppSizes.kTextSubheading,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: imageTopPosition,
          right: imageRightPosition,
          child: Image(
            image: AssetImage(imagePath),
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
