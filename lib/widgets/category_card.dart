import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  List<String> categoriesName = [
    'All Items',
    'Hoodies',
    'T-Shirts',
    'Shirts',
    'Pants',
    'Glasses',
    'Watches',
  ];

  List<IconData> categoriesIcon = [
    HugeIcons.strokeRoundedDashboardSquare02,
    HugeIcons.strokeRoundedHoodie,
    HugeIcons.strokeRoundedShirt01,
    HugeIcons.strokeRoundedTShirt,
    HugeIcons.strokeRoundedJoggerPants,
    HugeIcons.strokeRoundedGlasses,
    HugeIcons.strokeRoundedWatch01,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesName.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(
            AppSizes.kPaddingSmall + 2.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.primaryLight),
            borderRadius: BorderRadius.circular(
              AppSizes.kPaddingNormal,
            ),
          ),
          child: Row(
            children: [
              HugeIcon(
                icon: categoriesIcon[index],
                color:
                    index == 0 ? AppColors.primaryGreen : AppColors.primaryDark,
              ),
              const SizedBox(width: 10.0),
              Text(
                categoriesName[index],
                style: TextStyle(
                  fontSize: AppSizes.kTextSubheading + 2.0,
                  color: index == 0
                      ? AppColors.primaryGreen
                      : AppColors.primaryDark,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: AppSizes.kPaddingNormal);
        },
      ),
    );
  }
}
