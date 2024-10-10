import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Profile extends StatefulWidget {
  Profile({super.key});
  final GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int bottomNavigationBarIndex = 2;

  Color lightBgColor = Colors.white;
  Color primaryGreen = const Color.fromRGBO(136, 171, 142, 1);
  Color secondaryGreen = const Color.fromRGBO(175, 200, 173, 1);
  Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);
  Color secondaryDark = Color(0xFF17203A);

  List<String> titles = [
    'Account',
    'Security',
    'Address',
    'Wallet',
    'Orders',
    'Settings',
    'Logout',
  ];

  List<String> subtitles = [
    'Update your name, email, and profile picture',
    'Change your password and set up security options',
    'Manage your shipping and billing addresses',
    'Manage your balance and payment options',
    'Track your recent and past purchases',
    'Customize your account preferences',
    'Logout of your account',
  ];

  List<IconData> icons = [
    IconlyLight.profile,
    HugeIcons.strokeRoundedLockPassword,
    IconlyLight.location,
    HugeIcons.strokeRoundedWallet02,
    HugeIcons.strokeRoundedTruckDelivery,
    IconlyLight.filter,
    IconlyLight.logout,
  ];

  List<Widget> pages = [
    // Account(),
    // Security(),
    // Address(),
    // Wallet(),
    // Orders(),
    // Settings(),
    // Logout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            HugeIcons.strokeRoundedArrowLeft04,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
        ),
        centerTitle: true,
        backgroundColor: lightBgColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 140.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [primaryGreen, secondaryGreen],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -60.0,
                    left: -60.0,
                    child: _buildCirclePlaceholder(200.0, 200.0, 0.15),
                  ),
                  Positioned(
                    bottom: -50.0,
                    right: -40.0,
                    child: _buildCirclePlaceholder(150.0, 150.0, 0.2),
                  ),
                  Positioned(
                    top: 20.0,
                    right: 20.0,
                    child: _buildCirclePlaceholder(80.0, 80.0, 0.1),
                  ),
                  Positioned(
                    top: -30,
                    left: -30,
                    child: _buildCirclePlaceholder(100.0, 100.0, 0.3),
                  ),
                  Positioned(
                    bottom: -65.0,
                    left: 35.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: Colors.white.withOpacity(.4),
                          width: 10.0,
                        ),
                      ),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: AssetImage('images/avatars/avatar.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -45.0,
                    left: 165.0,
                    child: Text(
                      'Obada Daraghmeh',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: titles.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(icons[index]),
                        title: Text(titles[index]),
                        subtitle: Text(subtitles[index]),
                        trailing: const Icon(IconlyLight.arrow_right_2),
                        iconColor: primaryGreen,
                        tileColor: primaryGreen.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pages[index],
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
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
      backgroundColor: lightBgColor,
    );
  }

  Widget _buildCirclePlaceholder(double width, double height, double opacity) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(opacity),
      ),
    );
  }
}
