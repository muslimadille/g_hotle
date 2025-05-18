import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_hotle/auth/login_screen.dart';
import 'package:g_hotle/widgets/main_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/intro_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo_white.png',
                    width: 107.w,
                    height: 26.h,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TRAVEL THAT’S\nREWARDING",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),

                    SizedBox(height: 10.h),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Continue as a Guest?",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5.h),

                          MainButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => LoginScreen()),
                                ),
                              );
                            },
                            title: "LOGIN",
                          ),

                          SizedBox(height: 10.h),

                          MainButton(onTap: () {}, title: "SIGN UP"),

                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
