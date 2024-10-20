import 'package:ecommerce/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:ecommerce/widgets/promotion_banner.dart';
import 'package:ecommerce/widgets/section_title.dart';
import 'package:ecommerce/widgets/simple_rating.dart';
import 'package:ecommerce/utils/app_sizes.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:iconly/iconly.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _carouselSliderIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  late List<bool> isFavoriteList;

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

  List<IconData> drawerItemsIcon = [
    HugeIcons.strokeRoundedTruckDelivery,
    IconlyLight.filter,
    IconlyLight.logout,
  ];

  List<String> drawerItemsLabel = [
    'Orders',
    'Settings',
    'Logout',
  ];

  final List<Widget> _carouselItems = [
    PromotionBanner(
      title: 'Get your special sale up to 50%',
      buttonText: 'Grab It Now',
      imagePath: 'images/illustrations/sale-50.png',
      imageTopPosition: -50,
      imageRightPosition: -70,
      imageWidth: 300,
      imageHeight: 250,
    ),
    PromotionBanner(
      title: 'New fall jackets collection',
      buttonText: 'Explore Now',
      imagePath: 'images/illustrations/jackets-collection.png',
      imageTopPosition: -60,
      imageRightPosition: -45,
      imageWidth: 300,
      imageHeight: 250,
    ),
    PromotionBanner(
      title: 'Refer a friend & Earn rewards',
      buttonText: 'Invite Now',
      imagePath: 'images/illustrations/gift-box-rewards.png',
      imageTopPosition: -30,
      imageWidth: 200,
      imageHeight: 200,
    ),
  ];

  @override
  void initState() {
    super.initState();
    isFavoriteList = List<bool>.filled(productsName.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            HugeIcons.strokeRoundedMenu02,
            color: AppColors.primaryDark,
            size: 30.0,
          ),
          onPressed: () {
            widget.scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text(
          "Hello, Obada",
          style: TextStyle(
            color: AppColors.primaryDark,
            fontSize: AppSizes.kTextSubheading,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSizes.kPaddingNormal),
            child: Badge(
              offset: const Offset(-6.0, 6.0),
              label: Text(
                '0',
                style: TextStyle(
                  color: AppColors.secondaryLight,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: AppColors.primaryDark,
              child: IconButton(
                icon: Icon(
                  IconlyLight.notification,
                  color: AppColors.primaryDark,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.primaryGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 180.0,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.kPaddingNormal,
                    vertical: AppSizes.kPaddingSmall,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primaryGreen,
                        AppColors.secondaryGreen
                      ],
                    ),
                  ),
                  child: TextField(
                    cursorColor: AppColors.primaryDark,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        IconlyLight.search,
                        color: AppColors.primaryDark.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(
                        IconlyLight.filter,
                        color: AppColors.primaryDark,
                      ),
                      hintText: 'What are you looking for today?',
                      hintStyle: TextStyle(
                        fontSize: AppSizes.kTextBody,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primaryDark.withOpacity(0.5),
                      ),
                      filled: true,
                      fillColor: AppColors.secondaryGreen.withOpacity(0.5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                            BorderRadius.circular(AppSizes.kBorderRadiusLarge),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -80.0,
                  left: AppSizes.kPaddingNormal,
                  right: AppSizes.kPaddingNormal,
                  child: CarouselSlider(
                    items: _carouselItems,
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      clipBehavior: Clip.none,
                      height: 170.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1.0,
                      autoPlayInterval: const Duration(seconds: 10),
                      onPageChanged: (index, _) {
                        setState(() {
                          _carouselSliderIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100.0),
            // carousel indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _carouselItems.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () {
                    _carouselController.animateToPage(entry.key);
                  },
                  child: Container(
                    width: entry.key == _carouselSliderIndex ? 20.0 : 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppSizes.kBorderRadiusNormal),
                      color: entry.key == _carouselSliderIndex
                          ? AppColors.primaryGreen
                          : AppColors.primaryLight,
                    ),
                  ),
                );
              }).toList(), // Ensure the result of .map() is converted to a List<Widget>
            ),
            const SizedBox(height: AppSizes.kPaddingNormal),
            // discover our top picks
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.kPaddingNormal,
              ),
              child: Column(
                children: [
                  SectionTitle(
                    title: 'Discover Our Top Picks',
                    showSeeAll: true,
                  ),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                  CategoryCard(),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        productsName.length <= 4 ? productsName.length : 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: AppSizes.kPaddingNormal,
                      mainAxisSpacing: AppSizes.kPaddingNormal,
                      mainAxisExtent: 280.0,
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          ProductCardGrid(
                            imagePath: productsImage[index],
                            name: productsName[index],
                            price: productsPrice[index],
                            height: 280.0,
                          ),
                          Positioned(
                            top: 10.0,
                            right: 10.0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFavoriteList[index] =
                                      !isFavoriteList[index];
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryGreen.withOpacity(.2),
                                ),
                                child: Icon(
                                  IconlyBold.heart,
                                  color: isFavoriteList[index]
                                      ? AppColors.primaryGreen
                                      : AppColors.secondaryLight,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            left: 10.0,
                            child: SimpleRating(rating: 4.2),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.kPaddingNormal),
            // New Arrivals
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.kPaddingNormal,
              ),
              child: Column(
                children: [
                  SectionTitle(title: 'New Arrivals'),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                  SizedBox(
                    height: 250.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: productsName.length,
                      itemBuilder: (context, index) => ProductCardList(
                        imagePath: productsImage[index],
                        name: productsName[index],
                        price: productsPrice[index],
                        width: 150.0,
                      ),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: AppSizes.kPaddingNormal);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSizes.kPaddingNormal),
          ],
        ),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        backgroundColor: AppColors.secondaryGreen,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 120.0),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.kPaddingNormal,
                  vertical: AppSizes.kPaddingExtraLarge * 2.0,
                ),
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Text(
                      'Obada Daraghmeh',
                      style: TextStyle(
                        color: AppColors.primaryDark,
                        fontSize: AppSizes.kTextHeading,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppSizes.kPaddingNormal),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: drawerItemsIcon.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(
                            drawerItemsIcon[index],
                            color: AppColors.primaryDark,
                          ),
                          title: Text(drawerItemsLabel[index]),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90.0,
              child: CircleAvatar(
                radius: 60.0,
                backgroundColor: AppColors.primaryGreen.withOpacity(.3),
              ),
            ),
            Positioned(
              top: 100.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatars/avatar.jpg'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.lightBackgroundColor,
    );
  }
}
