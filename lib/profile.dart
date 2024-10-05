import 'package:flutter/material.dart';
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
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            IconsaxPlusLinear.arrow_left_3,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundImage:
                    AssetImage('images/avatars/avatar_male_memoji.png'),
              ),
              Positioned(
                bottom: -5.0,
                right: 150.0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    IconsaxPlusLinear.camera,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: Divider(
              color: Colors.grey[200],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Profile Information',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    _buildRow('Name', 'Obada Daraghmeh'),
                    _buildRow('Username', 'Obada7.e'),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.grey[200],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Personal Information',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    _buildRow('E-mail', 'obada.e.amer@gmail.com'),
                    _buildRow('Phone Number', '0597589712'),
                    _buildRow('Gender', 'Male'),
                    _buildRow('Date of Birth', '08 May, 2000'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String title, String info) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
            ),
          ),
          Text(
            info,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          const Icon(
            IconsaxPlusLinear.arrow_right_3,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
