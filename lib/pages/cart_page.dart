import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce/utils/dummy_data.dart';
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
  final List<int> _quantities = List<int>.generate(
    DummyData.productsName.length,
    (index) => 1,
  );
  final double _discountPercentage = 10;
  double _calculateTotal() {
    double total = 0;
    for (int i = 0; i < DummyData.productsName.length; i++) {
      total += DummyData.productsPrice[i] * _quantities[i];
    }
    return total;
  }

  double _calculateDiscount() {
    double total = _calculateTotal();
    return total * (_discountPercentage / 100);
  }

  double _calculateTotalWithDiscount() {
    double total = _calculateTotal();
    double discountAmount = _calculateDiscount();
    return total - discountAmount;
  }

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
            padding: const EdgeInsets.only(bottom: 130.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppSizes.kPaddingNormal),
                  child: ListView.builder(
                    itemCount: DummyData.productsName.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      bool isQuantityGreaterThanZero =
                          _quantities[index] > 1 ? true : false;
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppSizes.kPaddingNormal,
                        ),
                        child: Dismissible(
                          key: UniqueKey(),
                          // key: Key(index.toString()),
                          onDismissed: (direction) {
                            setState(() {});
                          },
                          background: Container(
                            padding: const EdgeInsets.only(
                              right: AppSizes.kPaddingLarge,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSizes.kBorderRadiusNormal,
                              ),
                              color: Colors.red,
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                HugeIcons.strokeRoundedDelete02,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          direction: DismissDirection.endToStart,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(
                              AppSizes.kPaddingSmall,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primaryGreen.withOpacity(.1),
                              borderRadius: BorderRadius.circular(
                                AppSizes.kBorderRadiusNormal,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  padding:
                                      EdgeInsets.all(AppSizes.kPaddingSmall),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppSizes.kBorderRadiusNormal,
                                    ),
                                    color: Colors.white.withOpacity(.7),
                                  ),
                                  child: Image.asset(
                                    DummyData.productsImage[index],
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(width: AppSizes.kPaddingNormal),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: Text(
                                        DummyData.productsName[index],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: AppSizes.kTextSubheading,
                                          color: AppColors.primaryDark,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: AppSizes.kPaddingNormal),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '\$${DummyData.productsPrice[index]}',
                                                style: TextStyle(
                                                  fontSize:
                                                      isQuantityGreaterThanZero
                                                          ? AppSizes.kTextSmall
                                                          : AppSizes
                                                              .kTextSubheading,
                                                  color:
                                                      isQuantityGreaterThanZero
                                                          ? AppColors
                                                              .primaryDark
                                                          : AppColors
                                                              .primaryGreen,
                                                  decoration:
                                                      isQuantityGreaterThanZero
                                                          ? TextDecoration
                                                              .lineThrough
                                                          : null,
                                                ),
                                              ),
                                              if (isQuantityGreaterThanZero)
                                                Text(
                                                  '\$${(DummyData.productsPrice[index] * _quantities[index]).toStringAsFixed(2)}',
                                                  style: TextStyle(
                                                    fontSize: AppSizes
                                                        .kTextSubheading,
                                                    color:
                                                        AppColors.primaryGreen,
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                AppSizes.kBorderRadiusNormal,
                                              ),
                                              color:
                                                  Colors.white.withOpacity(.7),
                                            ),
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  tooltip: 'Decrease quantity',
                                                  icon: Icon(
                                                    HugeIcons
                                                        .strokeRoundedMinusSign,
                                                    color:
                                                        isQuantityGreaterThanZero
                                                            ? AppColors
                                                                .primaryDark
                                                            : AppColors
                                                                .primaryLight,
                                                  ),
                                                  onPressed:
                                                      isQuantityGreaterThanZero
                                                          ? () {
                                                              setState(() {
                                                                _quantities[
                                                                    index]--;
                                                              });
                                                            }
                                                          : null,
                                                ),
                                                Text(
                                                  _quantities[index].toString(),
                                                  style: TextStyle(
                                                    fontSize: AppSizes
                                                        .kTextSubheading,
                                                    color:
                                                        AppColors.primaryDark,
                                                  ),
                                                ),
                                                IconButton(
                                                  tooltip: 'Increase quantity',
                                                  icon: Icon(
                                                    HugeIcons
                                                        .strokeRoundedPlusSign,
                                                    color:
                                                        AppColors.primaryDark,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      _quantities[index]++;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
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
                      '\$${_calculateTotal().toStringAsFixed(2)}',
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
                      '-\$${_calculateDiscount().toStringAsFixed(2)}',
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
                      '\$${_calculateTotalWithDiscount().toStringAsFixed(2)}',
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
