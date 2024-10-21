import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details_page.dart';
import 'package:ecommerce/widgets/simple_rating.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:iconly/iconly.dart';

class ProductCard extends StatefulWidget {
  final String imagePath;
  final double? imageWidth;
  final double? imageHeight;
  final String productName;
  final double? productNameSize;
  final String productPrice;
  final double? productPriceSize;
  final double? height;
  final double? width;
  final bool? isFavorite;
  final bool? enableFavorite;
  final bool? enableNewBadge;
  final VoidCallback? onFavoriteToggle;

  const ProductCard({
    super.key,
    required this.imagePath,
    this.imageWidth,
    this.imageHeight,
    required this.productName,
    this.productNameSize,
    required this.productPrice,
    this.productPriceSize,
    this.height,
    this.width,
    this.isFavorite,
    this.enableFavorite,
    this.enableNewBadge,
    this.onFavoriteToggle,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetailsPage(),
              ),
            );
          },
          child: Container(
            height: widget.height,
            width: widget.width,
            padding: const EdgeInsets.all(AppSizes.kPaddingNormal),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.kPaddingNormal),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.secondaryLight,
                  AppColors.primaryLight,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  widget.imagePath,
                  height: widget.imageHeight,
                  width: widget.imageWidth ?? double.infinity,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: AppSizes.kPaddingSmall),
                Text(
                  widget.productName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.primaryDark,
                    fontSize: widget.productNameSize ?? AppSizes.kTextBody,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.productPrice}',
                      style: TextStyle(
                        color: AppColors.primaryGreen,
                        fontSize: widget.productPriceSize ?? AppSizes.kTextBody,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SimpleRating(rating: 3.5),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (widget.enableFavorite == true)
          Positioned(
            top: 10.0,
            right: 10.0,
            child: GestureDetector(
              onTap: widget.onFavoriteToggle,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryGreen.withOpacity(.2),
                ),
                child: Icon(
                  IconlyBold.heart,
                  color: widget.isFavorite == true
                      ? AppColors.primaryGreen
                      : AppColors.secondaryLight,
                ),
              ),
            ),
          ),
        if (widget.enableNewBadge == true)
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 3.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.primaryGreen,
              ),
              child: Text(
                'New',
                style: TextStyle(
                  color: AppColors.secondaryLight,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
