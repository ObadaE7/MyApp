import 'package:ecommerce/utils/dummy_data.dart';
import 'package:ecommerce/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:ecommerce/widgets/promotion_banner.dart';
import 'package:ecommerce/widgets/section_title.dart';
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
    isFavoriteList = List<bool>.filled(DummyData.productsName.length, false);
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
                    itemCount: DummyData.productsName.length <= 4
                        ? DummyData.productsName.length
                        : 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: AppSizes.kPaddingNormal,
                      mainAxisSpacing: AppSizes.kPaddingNormal,
                      mainAxisExtent: 280.0,
                    ),
                    itemBuilder: (context, index) {
                      return ProductCard(
                        imagePath: DummyData.productsImage[index],
                        productName: DummyData.productsName[index],
                        productPrice: DummyData.productsPrice[index].toString(),
                        height: 280.0,
                        enableNewBadge: index % 2 == 0 ? true : false,
                        productNameSize: 20.0,
                        productPriceSize: 18.0,
                        enableFavorite: true,
                        imageHeight: 150.0,
                        isFavorite: isFavoriteList[index],
                        onFavoriteToggle: () {
                          setState(() {
                            isFavoriteList[index] = !isFavoriteList[index];
                          });
                        },
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
                      itemCount: DummyData.productsName.length,
                      itemBuilder: (context, index) => ProductCard(
                        imagePath: DummyData.productsImage[index],
                        productName: DummyData.productsName[index],
                        productPrice: DummyData.productsPrice[index].toString(),
                        imageHeight: 130.0,
                        enableNewBadge: index % 2 == 0 ? true : false,
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
