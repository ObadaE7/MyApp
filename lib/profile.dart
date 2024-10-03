import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[200],
              ),
              child: const HugeIcon(
                icon: HugeIcons.strokeRoundedArrowLeft01,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
      ),
      body: ListView(
        children: [
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
        ],
      ),
    );
  }
}
