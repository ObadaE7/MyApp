import 'package:ecommerce/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/product_details_page.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int bottomNavigationBarIndex = 0;

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

    List<String> productsName = [
      'Black hoodie',
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
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 170.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.kPaddingNormal,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSizes.kBorderRadiusLarge,
                          ),
                          color: AppColors.secondaryLight,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 180,
                                  child: Text(
                                    'Get your special sale up to 50%',
                                    style: TextStyle(
                                      color: AppColors.primaryDark,
                                      fontSize: AppSizes.kTextSubheading + 4.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15.0),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppSizes.kPaddingNormal,
                                    vertical: AppSizes.kPaddingNormal / 2.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppSizes.kBorderRadiusLarge,
                                    ),
                                    color: AppColors.primaryGreen,
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.primaryGreen
                                            .withOpacity(0.5),
                                        blurRadius: 10.0,
                                        offset: const Offset(0, 10.0),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: AppSizes.kTextSubheading,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -50,
                        right: -70,
                        child: Image(
                          image: AssetImage('images/illustrations/sale-50.png'),
                          width: 300,
                          height: 250,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.kPaddingNormal,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover Our Top Picks',
                        style: TextStyle(
                          color: AppColors.primaryDark,
                          fontSize: AppSizes.kTextHeading,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: AppColors.primaryGreen,
                          fontSize: AppSizes.kTextSubheading,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                  SizedBox(
                    height: 50.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesName.length,
                      itemBuilder: (context, index) => _buildCategoryCard(
                        categoriesIcon[index],
                        categoriesName[index],
                        isActive: index == 0 ? true : false,
                      ),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: AppSizes.kPaddingNormal);
                      },
                    ),
                  ),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                  GridView.builder(
                    itemCount:
                        productsName.length <= 4 ? productsName.length : 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: AppSizes.kPaddingNormal,
                      mainAxisSpacing: AppSizes.kPaddingNormal,
                      mainAxisExtent: 300.0,
                    ),
                    itemBuilder: (context, index) {
                      return _buildProductByCategoryCard(
                        productsImage[index],
                        productsName[index],
                        productsPrice[index],
                        isFavorite: (index % 2 == 0) ? true : false,
                      );
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: AppSizes.kPaddingNormal),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.kPaddingNormal,
            vertical: AppSizes.kPaddingNormal / 2.0,
          ),
          child: GNav(
            rippleColor: AppColors.primaryGreen,
            hoverColor: AppColors.primaryGreen.withOpacity(0.5),
            gap: 8.0,
            activeColor: AppColors.primaryDark,
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.kPaddingNormal,
              vertical: AppSizes.kPaddingNormal - 4.0,
            ),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: AppColors.primaryGreen.withOpacity(0.2),
            color: AppColors.primaryDark,
            tabs: [
              GButton(
                icon: IconlyLight.home,
                text: 'Home',
              ),
              GButton(
                icon: IconlyLight.bag,
                text: 'Cart',
              ),
              GButton(
                icon: IconlyLight.heart,
                text: 'Favorite',
              ),
              GButton(
                icon: IconlyLight.profile,
                text: 'Profile',
              ),
            ],
            selectedIndex: bottomNavigationBarIndex,
            onTabChange: (index) {
              setState(() {
                bottomNavigationBarIndex = index;
              });
            },
          ),
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

  Widget _buildCategoryCard(IconData icon, String name, {isActive = false}) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.kPaddingSmall + 2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryLight),
        borderRadius: BorderRadius.circular(AppSizes.kPaddingNormal),
      ),
      child: Row(
        children: [
          HugeIcon(
            icon: icon,
            color: isActive ? AppColors.primaryGreen : AppColors.primaryDark,
          ),
          const SizedBox(width: 10.0),
          Text(
            name,
            style: TextStyle(
              fontSize: AppSizes.kTextSubheading + 2.0,
              color: isActive ? AppColors.primaryGreen : AppColors.primaryDark,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductByCategoryCard(String image, String name, String price,
      {isFavorite = false}) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetailsPage(),
                  ),
                );
              },
              child: Container(
                height: 300.0,
                width: double.infinity,
                padding: const EdgeInsets.all(AppSizes.kPaddingNormal),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.kPaddingNormal),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.secondaryLight,
                      AppColors.primaryLight,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      image,
                      height: 150.0,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: AppSizes.kPaddingSmall),
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.primaryGreen,
                        fontSize: AppSizes.kTextHeading - 2,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: AppColors.primaryDark,
                        fontSize: AppSizes.kTextHeading - 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
              color: isFavorite
                  ? AppColors.primaryGreen
                  : AppColors.secondaryLight,
            ),
          ),
        ),
        Positioned(
          top: 20.0,
          left: 10.0,
          child: Row(
            children: [
              Icon(
                HugeIcons.strokeRoundedStar,
                color: Colors.amber,
                size: 20.0,
              ),
              const SizedBox(width: 5.0),
              Text(
                '4.5',
                style: TextStyle(
                  fontSize: AppSizes.kTextSubheading - 2,
                  color: AppColors.primaryDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
