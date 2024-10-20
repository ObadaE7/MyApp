import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce/widgets/draggable_sheet.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
          'My Cart',
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
                    HugeIcons.strokeRoundedShoppingCart01,
                    color: AppColors.primaryDark,
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: AppColors.lightBackgroundColor,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppSizes.kPaddingNormal),
                  child: ListView.builder(
                    itemCount: productsName.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 120.0,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.kBorderRadiusNormal,
                                  ),
                                  color: AppColors.primaryGreen.withOpacity(.1),
                                ),
                                child: Image.asset(
                                  productsImage[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: AppSizes.kPaddingNormal),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Text(
                                      productsName[index],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: AppSizes.kTextSubheading,
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: AppSizes.kPaddingNormal),
                                  Text(
                                    productsPrice[index],
                                    style: TextStyle(
                                      fontSize: AppSizes.kTextSubheading,
                                      color: AppColors.primaryGreen,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      HugeIcons.strokeRoundedPlusSignSquare,
                                      color: AppColors.primaryDark,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text('1'),
                                  IconButton(
                                    icon: Icon(
                                      HugeIcons.strokeRoundedMinusSignSquare,
                                      color: AppColors.primaryDark,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSizes.kPaddingNormal,
                            ),
                            child: DottedLine(
                              dashColor: AppColors.primaryGreen,
                              dashGapLength: 5.0,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          DraggableSheet(
            initialChildSize: 0.18,
            minChildSize: 0.18,
            maxChildSize: 0.43,
            draggableSheetBody: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-Total',
                      style: TextStyle(
                        fontSize: AppSizes.kTextSubheading + 2.0,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Text(
                      '\$120.00',
                      style: TextStyle(
                        fontSize: AppSizes.kTextSubheading + 2.0,
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.kPaddingNormal),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                        fontSize: AppSizes.kTextSubheading + 2.0,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Text(
                      '-\$3.00',
                      style: TextStyle(
                        fontSize: AppSizes.kTextSubheading + 2.0,
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.kPaddingNormal,
                  ),
                  child: DottedLine(
                    dashColor: AppColors.primaryGreen,
                    dashGapLength: 5.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Cost',
                      style: TextStyle(
                        fontSize: AppSizes.kTextSubheading + 2.0,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Text(
                      '\$117.00',
                      style: TextStyle(
                        fontSize: AppSizes.kTextSubheading + 2.0,
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.kPaddingNormal),
                MaterialButton(
                  color: AppColors.primaryGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      AppSizes.kBorderRadiusNormal,
                    ),
                  ),
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50.0,
                  padding:
                      EdgeInsets.symmetric(vertical: AppSizes.kPaddingNormal),
                  onPressed: () {},
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: AppSizes.kTextSubheading + 2.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.lightBackgroundColor,
    );
  }
}
