import 'package:ecommerce/product_details.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int bottomNavigationBarIndex = 2;

    Color lightBgColor = Colors.white;
    Color primaryGreen = const Color.fromRGBO(136, 171, 142, 1);
    Color secondaryGreen = const Color.fromRGBO(175, 200, 173, 1);
    // Color primaryLight = const Color.fromRGBO(238, 231, 218, 1);
    Color secondaryLight = const Color.fromRGBO(242, 241, 235, 1);
    Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);
    Color secondaryDark = Color(0xFF17203A);

    // Categories
    List<String> categoriesName = [
      'All',
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

    // Popular products
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

    // Drawer items
    List<IconData> drawerItemsIcon = [
      HugeIcons.strokeRoundedUser,
      HugeIcons.strokeRoundedTruckDelivery,
      HugeIcons.strokeRoundedSettings05,
      IconlyLight.logout,
    ];

    List<String> drawerItemsLabel = [
      'Profile',
      'Orders',
      'Settings',
      'Logout',
    ];

    return Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: lightBgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedMenu02,
            color: secondaryDark,
          ),
          tooltip: 'Open Drawer',
          onPressed: () {
            widget.scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Column(
          children: [
            Text(
              'Store location',
              style: TextStyle(
                color: secondaryGreen,
                fontSize: 14.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  IconlyBroken.location,
                  color: Colors.orangeAccent,
                  size: 20,
                ),
                const SizedBox(width: 5.0),
                Text(
                  'Tubas, Palestine',
                  style: TextStyle(
                    color: secondaryDark,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20.0,
            ),
            child: Container(
              height: 45.0,
              width: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: AssetImage('images/avatars/avatar.jpg'),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: lightBgColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Search bar
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyLight.search,
                    color: secondaryDark,
                  ),
                  hintText: 'Looking for something?',
                  hintStyle: TextStyle(
                    color: secondaryDark.withOpacity(.4),
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: secondaryLight.withOpacity(.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Sales slider
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          primaryGreen,
                          secondaryGreen,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 180,
                                child: Text(
                                  'Get your special sale up to 50%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: primaryDark.withOpacity(.5),
                                  ),
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
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
              const SizedBox(height: 20.0),
              // Categories
              SizedBox(
                height: 50.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesName.length,
                  itemBuilder: (context, index) => _buildCategoryRow(
                    categoriesIcon[index],
                    categoriesName[index],
                    isActive: index == 0 ? true : false,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Popular products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: primaryDark,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: primaryDark.withOpacity(.5),
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              GridView.builder(
                itemCount: productsName.length <= 6 ? productsName.length : 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisExtent: 280.0,
                ),
                itemBuilder: (context, index) {
                  return _buildPopularProductCard(
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: StatefulBuilder(
        builder: (context, setState) {
          return CurvedNavigationBar(
            key: widget.bottomNavigationKey,
            buttonBackgroundColor: primaryGreen,
            backgroundColor: Colors.transparent,
            color: secondaryDark,
            animationCurve: Curves.easeInOutCubicEmphasized,
            index: bottomNavigationBarIndex,
            items: <Widget>[
              Icon(
                IconlyLight.bag,
                size: 30,
                color:
                    bottomNavigationBarIndex == 1 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconlyLight.heart,
                size: 30,
                color:
                    bottomNavigationBarIndex == 0 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconlyLight.home,
                size: 30,
                color:
                    bottomNavigationBarIndex == 2 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconlyLight.notification,
                size: 30,
                color:
                    bottomNavigationBarIndex == 3 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconlyLight.profile,
                size: 30,
                color:
                    bottomNavigationBarIndex == 4 ? primaryDark : primaryGreen,
              ),
            ],
            onTap: (index) {
              setState(() {
                bottomNavigationBarIndex = index;
              });
            },
          );
        },
      ),
      drawer: Stack(
        children: [
          Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            backgroundColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: drawerItemsLabel.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        drawerItemsIcon[index],
                        color: Colors.black,
                      ),
                      title: Text(drawerItemsLabel[index]),
                      onTap: () {
                        index == 0
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              )
                            : null;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryRow(IconData icon, String name, {isActive = false}) {
    Color primaryGreen = const Color.fromRGBO(136, 171, 142, 1);
    Color primaryLight = const Color.fromRGBO(238, 231, 218, 1);
    Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);

    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: primaryLight),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          HugeIcon(
            icon: icon,
            color: isActive ? primaryGreen : primaryDark,
          ),
          const SizedBox(width: 10.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 20.0,
              color: isActive ? primaryGreen : primaryDark,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPopularProductCard(String image, String name, String price,
      {isFavorite = false}) {
    Color primaryGreen = const Color.fromRGBO(136, 171, 142, 1);
    Color primaryLight = const Color.fromRGBO(238, 231, 218, 1);
    Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);

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
                    builder: (context) => const ProductDetails(),
                  ),
                );
              },
              child: Container(
                height: 200.0,
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      primaryLight,
                      primaryGreen,
                    ],
                  ),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: primaryGreen,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: primaryDark,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
              color: primaryGreen.withOpacity(.2),
            ),
            child: Icon(
              IconlyBold.heart,
              color: isFavorite ? primaryGreen : primaryLight,
            ),
          ),
        ),
      ],
    );
  }
}
