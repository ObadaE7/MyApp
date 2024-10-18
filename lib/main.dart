import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/favorites_page.dart';
import 'package:ecommerce/pages/profile_page.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageLayout(),
    );
  }
}

class MainPageLayout extends StatefulWidget {
  const MainPageLayout({super.key});

  @override
  State<MainPageLayout> createState() => _MainPageLayoutState();
}

class _MainPageLayoutState extends State<MainPageLayout>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  late MotionTabBarController _motionTabBarController;

  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: _currentIndex,
      length: _pages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "Home",
        useSafeArea: true,
        labels: const ["Home", "Cart", "Favorites", "Profile"],
        icons: const [
          IconlyLight.home,
          HugeIcons.strokeRoundedShoppingCart01,
          IconlyLight.heart,
          IconlyLight.profile,
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: AppColors.primaryDark,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: AppColors.primaryGreen,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: AppColors.primaryGreen,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _currentIndex = value;
            _motionTabBarController.index = value;
          });
        },
      ),
    );
  }
}
