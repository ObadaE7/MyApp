import 'package:ecommerce/product_details.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: InkWell(
            onTap: () {
              widget.scaffoldKey.currentState!.openDrawer();
            },
            child: const HugeIcon(
              icon: HugeIcons.strokeRoundedMenu02,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
        title: Text(
          'Veeluxe Fashion',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryBgColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                    image: AssetImage('images/banner.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      colors: [
                        Colors.black.withOpacity(.2),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'New Collection',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            'Discount 30% for the first transaction',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 6.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            'Shop Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Featured Products',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedArrowRight01,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    featuredProductsCard(
                      'images/products/p1.png',
                      'Men\'s Hoodie',
                      '\$9.99',
                      isFavorite: true,
                    ),
                    featuredProductsCard(
                      'images/products/p2.png',
                      'Sweatshirt',
                      '\$4.59',
                    ),
                    featuredProductsCard(
                      'images/products/p3.png',
                      'Basketball Short',
                      '\$9.99',
                    ),
                    featuredProductsCard(
                      'images/products/p4.png',
                      'Mens Long Sleeve Raglan T-Shirt',
                      '\$25',
                      isFavorite: true,
                    ),
                    featuredProductsCard(
                      'images/products/p5.png',
                      'Men\'s Sport Pants',
                      '\$8',
                    ),
                    featuredProductsCard(
                      'images/products/p6.png',
                      'Women\'s Oversize Hoodie',
                      '\$15.99',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedHome01,
                        color: Colors.black,
                      ),
                      title: const Text('Home page'),
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
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedShoppingBag01,
                        color: Colors.black,
                      ),
                      title: const Text('My Cart'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedFavourite,
                        color: Colors.black,
                      ),
                      title: const Text('Wish List'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedUser,
                        color: Colors.black,
                      ),
                      title: const Text('My profile'),
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
                      leading: const HugeIcon(
                        icon: HugeIcons.strokeRoundedSettings01,
                        color: Colors.black,
                      ),
                      title: const Text('Settings'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const HugeIcon(
                  icon: HugeIcons.strokeRoundedLogout02,
                  color: Colors.black,
                ),
                title: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: primaryBgColor,
    );
  }

  Widget featuredProductsCard(String image, String name, String price,
      {bool isFavorite = false}) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 15.0),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey[200],
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetails(),
                  ),
                );
              },
              child: Image.asset(image),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'SFPRO',
                  fontSize: 16,
                  color: Colors.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.indigoAccent,
                  ),
                  width: 120,
                  child: const HugeIcon(
                    icon: HugeIcons.strokeRoundedShoppingBag01,
                    color: Colors.white,
                  )),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.grey[200],
                ),
                child: isFavorite
                    ? const HugeIcon(
                        icon: HugeIcons.strokeRoundedFavourite,
                        color: Colors.red,
                      )
                    : const HugeIcon(
                        icon: HugeIcons.strokeRoundedFavourite,
                        color: Colors.black,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
