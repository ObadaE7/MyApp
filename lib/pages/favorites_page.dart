import 'package:ecommerce/widgets/category_card.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:iconly/iconly.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<String> productsName = [
    'Men\'s Black hoodie',
    'Hawaiian shirt isolated',
    'Plain dark green t-shirt',
    'Light green front sunglasses with black',
    'Rolex Yacht-Master',
    'Cargo pants men with plain isolated',
  ];

  List<String> productsImage = [
    'images/products/hoodies/hoodie-1.png',
    'images/products/shirts/shirt-4.png',
    'images/products/t-shirts/t-shirt-5.png',
    'images/products/glasses/glasses-3.png',
    'images/products/watches/watch-2.png',
    'images/products/pants/pants-4.png',
  ];

  List<String> productsPrice = [
    '\$20.00',
    '\$11.00',
    '\$40.00',
    '\$36.99',
    '\$60.00',
    '\$29.35',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(
            color: AppColors.primaryDark,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSizes.kPaddingNormal),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    IconlyLight.filter,
                    color: AppColors.primaryDark,
                  ),
                  onPressed: () {},
                ),
                Badge(
                  label: Text(
                    productsName.length.toString(),
                  ),
                  backgroundColor: AppColors.primaryGreen,
                  child: Icon(
                    IconlyLight.heart,
                    color: AppColors.primaryDark,
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: AppColors.lightBackgroundColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          AppSizes.kPaddingNormal,
          0,
          AppSizes.kPaddingNormal,
          AppSizes.kPaddingNormal,
        ),
        child: Column(
          children: [
            CategoryCard(),
            const SizedBox(height: AppSizes.kPaddingNormal),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: productsName.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: AppSizes.kPaddingNormal,
                mainAxisSpacing: AppSizes.kPaddingNormal,
                childAspectRatio: 0.74,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    ProductCard(
                      imagePath: productsImage[index],
                      name: productsName[index],
                      price: productsPrice[index],
                      isGrid: false,
                      onTap: () {},
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryGreen.withOpacity(.2),
                        ),
                        child: Icon(
                          IconlyBold.heart,
                          color: AppColors.primaryGreen,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.lightBackgroundColor,
    );
  }
}
