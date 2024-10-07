import 'package:ecommerce/product_details.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _bottomNavigationBarIndex = 2;

    Color lightBgColor = Colors.white;
    Color primaryGreen = const Color.fromRGBO(136, 171, 142, 1);
    Color secondaryGreen = const Color.fromRGBO(175, 200, 173, 1);
    // Color primaryLight = const Color.fromRGBO(238, 231, 218, 1);
    Color secondaryLight = const Color.fromRGBO(242, 241, 235, 1);
    Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);

    List<String> categoriesName = [
      'All',
      'Clothing',
      'Watches',
      'Footwear',
      'Furniture',
    ];

    List<IconData> categoriesIcon = [
      HugeIcons.strokeRoundedDashboardSquare02,
      HugeIcons.strokeRoundedHoodie,
      HugeIcons.strokeRoundedWatch01,
      HugeIcons.strokeRoundedRunningShoes,
      HugeIcons.strokeRoundedSofaSingle,
    ];

    List<String> productsImage = [
      'images/products/clothes/clothe-1.png',
      'images/products/shoes/shoes-2.png',
      'images/products/furniture/furniture-6.png',
      'images/products/clothes/clothe-4.png',
      'images/products/shoes/shoes-13.png',
      'images/products/watches/watch-6.png',
    ];

    List<String> productsName = [
      'Men\'s hoodie',
      'Nike Lunar',
      'Wing chair',
      'Long-sleeved T-shirt',
      'Woman high heel shoes',
      'Rolex watch',
    ];

    List<String> productsPrice = [
      '\$20.00',
      '\$11.00',
      '\$40.00',
      '\$36.99',
      '\$60.00',
      '\$29.35',
    ];

    return Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: lightBgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedMenu02,
            color: primaryDark,
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
                  IconsaxPlusBold.location,
                  color: Colors.orangeAccent,
                  size: 20,
                ),
                const SizedBox(width: 5.0),
                Text(
                  'Tubas, Palestine',
                  style: TextStyle(
                    color: primaryDark,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 20.0,
            ),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('images/avatars/avatar.jpg'),
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
                    IconsaxPlusLinear.search_normal,
                    color: primaryDark,
                  ),
                  hintText: 'Looking for something?',
                  hintStyle: TextStyle(
                    color: primaryDark.withOpacity(.4),
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: secondaryLight,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Sales slider
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
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
                                    borderRadius: BorderRadius.circular(15.0),
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
                      image: AssetImage('images/sale.png'),
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
                  mainAxisSpacing: 20.0,
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
            key: widget._bottomNavigationKey,
            buttonBackgroundColor: primaryGreen,
            backgroundColor: Colors.transparent,
            color: Color(0xFF17203A),
            animationCurve: Curves.easeInOutCubicEmphasized,
            index: _bottomNavigationBarIndex,
            items: <Widget>[
              Icon(
                IconsaxPlusLinear.heart,
                size: 30,
                color:
                    _bottomNavigationBarIndex == 0 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconsaxPlusLinear.shopping_cart,
                size: 30,
                color:
                    _bottomNavigationBarIndex == 1 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconsaxPlusLinear.home,
                size: 30,
                color:
                    _bottomNavigationBarIndex == 2 ? primaryDark : primaryGreen,
              ),
              HugeIcon(
                icon: HugeIcons.strokeRoundedNotification01,
                size: 30,
                color:
                    _bottomNavigationBarIndex == 3 ? primaryDark : primaryGreen,
              ),
              Icon(
                IconsaxPlusLinear.user,
                size: 30,
                color:
                    _bottomNavigationBarIndex == 4 ? primaryDark : primaryGreen,
              ),
            ],
            onTap: (index) {
              setState(() {
                _bottomNavigationBarIndex = index;
              });
            },
          );
        },
      ),
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
        child: Drawer(
          backgroundColor: lightBgColor,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const DrawerHeader(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                'images/avatars/avatar_male_memoji.png'),
                          ),
                          Text(
                            'Obada Daraghmeh',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '@Obada7.e',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        IconsaxPlusLinear.user,
                        color: Colors.black,
                      ),
                      title: const Text('Profile'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        IconsaxPlusLinear.home,
                        color: Colors.black,
                      ),
                      title: const Text('Home Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        IconsaxPlusLinear.shopping_cart,
                        color: Colors.black,
                      ),
                      title: const Text('My Cart'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        IconsaxPlusLinear.heart,
                        color: Colors.black,
                      ),
                      title: const Text('Favorites'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedTruckDelivery,
                        color: Colors.black,
                      ),
                      title: const Text('Orders'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification03,
                        color: Colors.black,
                      ),
                      title: const Text('Notifications'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  IconsaxPlusLinear.logout,
                  color: Colors.black,
                ),
                title: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
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
              IconsaxPlusBold.heart,
              color: isFavorite ? primaryGreen : primaryLight,
            ),
          ),
        ),
      ],
    );
  }
}
