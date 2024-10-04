import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                        AssetImage('images/avatars/avatar_male_memoji.png'),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Obada Daraghmeh',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: const Icon(
                    IconsaxPlusLinear.arrow_left_3,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
          ]),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Username',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: double.infinity,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[100],
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Obada7.e',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: double.infinity,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[100],
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Obada Daraghmeh',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: double.infinity,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[100],
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'obada.e.amer@gmail.com',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
