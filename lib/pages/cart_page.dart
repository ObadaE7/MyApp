import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:iconly/iconly.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            color: AppColors.primaryDark,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              IconlyLight.filter,
              color: AppColors.primaryDark,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: AppColors.lightBackgroundColor,
      ),
      body: Center(
        child: Text(
          'Cart Page',
          style: TextStyle(
            color: AppColors.primaryDark,
            fontSize: AppSizes.kTextSubheading,
          ),
        ),
      ),
      backgroundColor: AppColors.lightBackgroundColor,
    );
  }
}
