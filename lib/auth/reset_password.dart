import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_hotle/auth/otp_screen.dart';
import 'package:g_hotle/widgets/custom_text_field.dart';
import 'package:g_hotle/widgets/main_button.dart';
import 'package:g_hotle/widgets/main_container.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final TextEditingController emailController = TextEditingController();

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
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                'assets/icons/arrow_back.png',
                                width: 10.w,
                                height: 10.h,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'RESET PASSWORD',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
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
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0.h,
                  child: MainButton(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        ),
                    title: "SUBMIT",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
