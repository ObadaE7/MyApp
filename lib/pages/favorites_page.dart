import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: Icon(
        //       HugeIcons.strokeRoundedArrowLeft04,
        //       size: 30.0,
        //     ),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        //   title: Text(
        //     'Favorites',
        //   ),
        //   centerTitle: true,
        //   backgroundColor: AppColors.lightBackgroundColor,
        // ),
        body: Center(
          child: Text(
            'Favorites Page',
            style: TextStyle(
              color: AppColors.primaryDark,
              fontSize: AppSizes.kTextSubheading,
            ),
          ),
        ),
      ),
    );
  }
}
