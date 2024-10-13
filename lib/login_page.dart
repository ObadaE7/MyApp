import 'package:flutter/material.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:hugeicons/hugeicons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: AppColors.secondaryDark,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  'Email',
                  style: TextStyle(
                    color: AppColors.secondaryDark,
                    fontSize: 20.0,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: HugeIcon(
                      icon: HugeIcons.strokeRoundedMail02,
                      color: AppColors.secondaryDark,
                    ),
                    hintText: 'example@example.com',
                    hintStyle: TextStyle(
                      color: AppColors.secondaryDark.withOpacity(.4),
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: AppColors.secondaryLight.withOpacity(.5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  'Password',
                  style: TextStyle(
                    color: AppColors.secondaryDark,
                    fontSize: 20.0,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: HugeIcon(
                      icon: HugeIcons.strokeRoundedLockPassword,
                      color: AppColors.secondaryDark,
                    ),
                    suffixIcon: HugeIcon(
                      icon: HugeIcons.strokeRoundedViewOff,
                      color: AppColors.secondaryDark,
                    ),
                    hintText: '•••••••••',
                    hintStyle: TextStyle(
                      color: AppColors.secondaryDark.withOpacity(.4),
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: AppColors.secondaryLight.withOpacity(.5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: AppColors.primaryGreen,
                          checkColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          side: BorderSide(
                            color: AppColors.primaryGreen,
                          ),
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: AppColors.secondaryDark,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: AppColors.secondaryDark,
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
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
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100.0,
                      child: Divider(),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      'Or sign up with',
                      style: TextStyle(
                        color: AppColors.secondaryDark,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      width: 100.0,
                      child: Divider(),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: AppColors.primaryGreen.withOpacity(.2),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedGoogle,
                        color: AppColors.primaryDark,
                        size: 35.0,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: AppColors.primaryGreen.withOpacity(.2),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedFacebook02,
                        color: AppColors.primaryDark,
                        size: 35.0,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: AppColors.primaryGreen.withOpacity(.2),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedApple,
                        color: AppColors.primaryDark,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: AppColors.secondaryDark,
                          fontSize: 18.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: AppColors.primaryGreen,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
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
