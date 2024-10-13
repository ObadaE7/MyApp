import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image:
                      AssetImage('images/illustrations/Online Shopping 6.png'),
                  height: 300,
                  width: 300,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 30.0),
                Text(
                  'ExplorePage The App',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Start your shopping journey with us! ExplorePage our wide range of products and enjoy a seamless shopping experience, backed by our commitment to quality.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Let\'s Start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -175,
              right: -207,
              child: Container(
                width: 342,
                height: 342,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryGreen.withOpacity(.2),
                ),
              ),
            ),
            Positioned(
              top: -210,
              right: -37,
              child: Container(
                width: 445,
                height: 406,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryGreen.withOpacity(.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
