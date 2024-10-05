import 'package:ecommerce/product_details.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color primaryBgColor = Colors.white;
    return Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: primaryBgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // App bar
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        widget.scaffoldKey.currentState!.openDrawer();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          color: Colors.grey.shade100,
                        ),
                        child: const HugeIcon(
                          icon: HugeIcons.strokeRoundedMenu02,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Store location',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              IconsaxPlusBold.location,
                              color: Colors.orangeAccent,
                              size: 20,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              'Tubas, Palestine',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: Colors.grey.shade100,
                      ),
                      child: const Icon(
                        IconsaxPlusLinear.shopping_cart,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              // Search bar
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    IconsaxPlusLinear.search_normal,
                    color: Colors.grey,
                  ),
                  hintText: 'Looking for something?',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
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
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    colors: [
                      Colors.deepPurpleAccent.withOpacity(.7),
                      Colors.blue.withOpacity(.5),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            '50%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                          Text(
                            'OFF',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(.1),
                            ),
                          ),
                          const Image(
                            image:
                                AssetImage('images/products/shoes/shoes-3.png'),
                            width: 160,
                            height: 160,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Categories
              SizedBox(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryRow(
                      HugeIcons.strokeRoundedDashboardSquare02,
                      'All items',
                      isActive: true,
                    ),
                    _buildCategoryRow(
                      HugeIcons.strokeRoundedRunningShoes,
                      'Footwear',
                    ),
                    _buildCategoryRow(
                      HugeIcons.strokeRoundedWatch01,
                      'Watches',
                    ),
                    _buildCategoryRow(
                      HugeIcons.strokeRoundedSofaSingle,
                      'Furniture',
                    ),
                    _buildCategoryRow(
                      HugeIcons.strokeRoundedSofaSingle,
                      'Furniture',
                    ),
                    _buildCategoryRow(
                      HugeIcons.strokeRoundedHoodie,
                      'Clothing',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              // Popular products
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  mainAxisExtent: 280.0,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.deepPurpleAccent.withOpacity(.1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductDetails(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'images/products/clothes/clothe-${index + 1}.png',
                                width: double.infinity,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hoodie',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  const Text(
                                    '\$25.00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 25.0,
                        right: 10.0,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.withOpacity(.2),
                          ),
                          child: const Icon(
                            IconsaxPlusBold.heart,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              IconsaxPlusLinear.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconsaxPlusLinear.heart,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconsaxPlusLinear.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconsaxPlusLinear.user,
            ),
            label: 'Profile',
          ),
        ],
      ),
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
        child: Drawer(
          backgroundColor: primaryBgColor,
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
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          HugeIcon(
            icon: icon,
            color: isActive ? Colors.deepPurpleAccent : Colors.black,
          ),
          const SizedBox(width: 10.0),
          Text(
            name,
            style: const TextStyle(
              fontSize: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
