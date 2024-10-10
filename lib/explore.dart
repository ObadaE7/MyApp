import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  Color lightBgColor = Colors.white;
  Color secondaryLight = const Color.fromRGBO(242, 241, 235, 1);
  Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);
  Color secondaryDark = Color(0xFF17203A);
  Color primaryGreen = const Color.fromRGBO(136, 171, 142, 1);
  Color secondaryGreen = const Color.fromRGBO(175, 200, 173, 1);

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
              // crossAxisAlignment: CrossAxisAlignment.center,
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
                  'Explore The App',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Start your shopping journey with us! Explore our wide range of products and enjoy a seamless shopping experience, backed by our commitment to quality.',
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
                    color: primaryGreen,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Let\'s Start',
                      style: TextStyle(
                        color: lightBgColor,
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
                  color: primaryGreen.withOpacity(.2),
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
                  color: primaryGreen.withOpacity(.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
