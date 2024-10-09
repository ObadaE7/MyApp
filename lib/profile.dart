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
  Color primaryDark = const Color.fromRGBO(34, 65, 45, 1);
  Color secondaryDark = Color(0xFF17203A);

  List<String> items = [
    'Account',
    'Security',
    'Address',
    'Wallet',
    'Orders',
    'Settings',
    'Logout',
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
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/avatars/avatar.jpg'),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: secondaryDark,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      IconlyLight.camera,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Obada Daraghmeh',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 40.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: primaryGreen),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Edit profile',
                    style: TextStyle(
                      color: primaryGreen,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) => SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(icons[index]),
                      title: Text(items[index]),
                      trailing: const Icon(IconlyLight.arrow_right_2),
                      minTileHeight: 0,
                    ),
                    if (index != items.length - 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: const Divider(),
                      ),
                  ],
                ),
              ),
            ),
          ],
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
}
