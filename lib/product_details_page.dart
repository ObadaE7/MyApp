import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:dotted_line/dotted_line.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            HugeIcons.strokeRoundedArrowLeft04,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Details',
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryGreen.withOpacity(.2),
              ),
              child: IconButton(
                icon: Icon(
                  IconlyBold.heart,
                  color: isFavorite ? AppColors.primaryGreen : Colors.white70,
                ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.lightBackgroundColor,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/products/hoodies/hoodie-1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.52,
              minChildSize: 0.52,
              maxChildSize: .85,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 10,
                        blurRadius: 100,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 100.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'HOODIE',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryGreen,
                            ),
                          ),
                          Text(
                            'Black Hoodie',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Stay cozy and stylish with the Premium Fleece Hoodie. Crafted from a high-quality cotton blend, this hoodie offers warmth and comfort without sacrificing style. Featuring a spacious front pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit, it\'s perfect for layering during chilly days. Whether you\'re lounging at home or stepping out, this hoodie is a versatile must-have in your wardrobe. Available in a range of colors and sizes.',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            children: [
                              Icon(
                                IconlyBold.star,
                                color: Colors.amber,
                                size: 30.0,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '(89 Reviews)',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '\$19.99',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondaryDark,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    iconSize: 40.0,
                                    icon: Icon(
                                      HugeIcons.strokeRoundedRemoveSquare,
                                      color: AppColors.primaryGreen,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondaryDark,
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    iconSize: 40.0,
                                    icon: Icon(
                                      HugeIcons.strokeRoundedPlusSignSquare,
                                      color: AppColors.primaryGreen,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          SizedBox(
                            width: double.infinity,
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineLength: double.infinity,
                              dashLength: 4.0,
                              dashColor: AppColors.primaryGreen,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Customer reviews',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              IconlyLight.arrow_down_2,
                              size: 30.0,
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineLength: double.infinity,
                              dashLength: 4.0,
                              dashColor: AppColors.primaryGreen,
                            ),
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
      bottomNavigationBar: Container(
        height: 100.0,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 10,
              blurRadius: 100,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total price',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '\$19.99',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryDark,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: [
                  Icon(
                    IconlyLight.bag,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.lightBackgroundColor,
    );
  }
}
