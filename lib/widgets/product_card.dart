import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details_page.dart';
import 'package:ecommerce/widgets/simple_rating.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final bool isGrid;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.onTap,
    this.height,
    this.width,
    this.isGrid = false, // Default to false for list
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: isGrid ? height : null,
        width: isGrid ? null : width,
        padding: const EdgeInsets.all(AppSizes.kPaddingNormal),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.kPaddingNormal),
          gradient: LinearGradient(
            begin: isGrid ? Alignment.topCenter : Alignment.topLeft,
            end: isGrid ? Alignment.bottomCenter : Alignment.bottomRight,
            colors: [
              AppColors.secondaryLight,
              AppColors.primaryLight,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment:
              isGrid ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              imagePath,
              height: isGrid ? 150.0 : 130.0,
              width: isGrid ? double.infinity : 150.0,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: AppSizes.kPaddingSmall),
            Text(
              name,
              maxLines: isGrid ? 1 : 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.primaryDark,
                fontSize:
                    isGrid ? (AppSizes.kTextHeading - 2) : AppSizes.kTextBody,
                fontWeight: isGrid ? FontWeight.normal : FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            if (!isGrid) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: AppSizes.kTextBody,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryGreen,
                    ),
                  ),
                  SimpleRating(rating: 3.5),
                ],
              ),
            ] else ...[
              Text(
                price,
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontSize: AppSizes.kTextHeading - 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class ProductCardGrid extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final double height;

  const ProductCardGrid({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      imagePath: imagePath,
      name: name,
      price: price,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductDetailsPage(),
          ),
        );
      },
      height: height,
      isGrid: true,
    );
  }
}

class ProductCardList extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final double width;

  const ProductCardList({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      imagePath: imagePath,
      name: name,
      price: price,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductDetailsPage(),
          ),
        );
      },
      width: width,
      isGrid: false,
    );
  }
}
