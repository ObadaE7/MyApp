import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: secondaryDark,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  'Email',
                  style: TextStyle(
                    color: secondaryDark,
                    fontSize: 20.0,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: HugeIcon(
                      icon: HugeIcons.strokeRoundedMail02,
                      color: secondaryDark,
                    ),
                    hintText: 'example@example.com',
                    hintStyle: TextStyle(
                      color: secondaryDark.withOpacity(.4),
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: secondaryLight.withOpacity(.5),
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
                    color: secondaryDark,
                    fontSize: 20.0,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: HugeIcon(
                      icon: HugeIcons.strokeRoundedLockPassword,
                      color: secondaryDark,
                    ),
                    suffixIcon: HugeIcon(
                      icon: HugeIcons.strokeRoundedViewOff,
                      color: secondaryDark,
                    ),
                    hintText: '•••••••••',
                    hintStyle: TextStyle(
                      color: secondaryDark.withOpacity(.4),
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: secondaryLight.withOpacity(.5),
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
                          activeColor: primaryGreen,
                          checkColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          side: BorderSide(
                            color: primaryGreen,
                          ),
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: secondaryDark,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: secondaryDark,
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
                    color: primaryGreen,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: lightBgColor,
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
                        color: secondaryDark,
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
                      backgroundColor: primaryGreen.withOpacity(.2),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedGoogle,
                        color: primaryDark,
                        size: 35.0,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: primaryGreen.withOpacity(.2),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedFacebook02,
                        color: primaryDark,
                        size: 35.0,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: primaryGreen.withOpacity(.2),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedApple,
                        color: primaryDark,
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
                          color: secondaryDark,
                          fontSize: 18.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: primaryGreen,
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
