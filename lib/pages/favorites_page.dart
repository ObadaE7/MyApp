import 'package:ecommerce/utils/dummy_data.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Wishlist',
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
                    DummyData.productsName.length.toString(),
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
              itemCount: DummyData.productsName.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: AppSizes.kPaddingNormal,
                mainAxisSpacing: AppSizes.kPaddingNormal,
                mainAxisExtent: 280.0,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  imagePath: DummyData.productsImage[index],
                  productName: DummyData.productsName[index],
                  productPrice: DummyData.productsPrice[index],
                  height: 280.0,
                  isFavorite: true,
                  enableFavorite: true,
                  productNameSize: 20.0,
                  productPriceSize: 18.0,
                  imageHeight: 150.0,
                  onFavoriteToggle: () {},
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
