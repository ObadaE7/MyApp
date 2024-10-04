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
    Color primaryBgColor = Colors.grey[50]!;

    return Scaffold(
      key: widget.scaffoldKey,
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
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
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
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
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
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white.withOpacity(.1),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Discount',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
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
                          ),
                        ],
                      ),
                      const SizedBox(width: 40.0),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('images/products/shoes/shoes-3.png'),
                            width: 150,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ],
                      )
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
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedDashboardSquare02,
                            color: Colors.deepPurpleAccent,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'ALL',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedRunningShoes,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'FOOTWEAR',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedWatch01,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'WATCHES',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedSofaSingle,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'FURNITURE',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedHoodie,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'CLOTHING',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
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
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 200.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.deepPurpleAccent.withOpacity(.1),
                              ),
                              child: Image.asset(
                                'images/products/clothes/clothe-${index + 1}.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Hoodie',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Text(
                                    '\$25.00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
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
                        top: 10.0,
                        right: 10.0,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white.withOpacity(.5),
                          ),
                          child: const Icon(
                            IconsaxPlusLinear.heart,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.deepPurpleAccent.withOpacity(.8),
                          ),
                          child: const Icon(
                            IconsaxPlusLinear.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
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
}
