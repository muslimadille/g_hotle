import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_hotle/auth/reset_password.dart';
import 'package:g_hotle/auth/sign_up_screen.dart';
import 'package:g_hotle/widgets/custom_text_field.dart';
import 'package:g_hotle/widgets/main_button.dart';
import 'package:g_hotle/widgets/main_container.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Image.asset(
                'assets/images/logo_black.png',
                width: 107.w,
                height: 26.h,
              ),
            ),

            SizedBox(height: 30.h),

            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.73,
                ),
                Center(
                  child: MainContainer(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close_sharp,
                                color: Colors.black,
                                weight: 8.w,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),

                        CustomTextField(
                          hintText: 'Email Address or Phone Number',
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                        ),

                        SizedBox(height: 30.h),

                        CustomTextField(
                          hintText: 'Password',
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),

                        SizedBox(height: 10.h),

                        GestureDetector(
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPassword(),
                                ),
                              ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_forward, size: 16.sp),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),

                        GestureDetector(
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Don’t have an Account? Sign up",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.h,
                  child: MainButton(onTap: () {}, title: "LOGIN"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
