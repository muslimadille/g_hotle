import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_hotle/auth/change_password_screen.dart';
import 'package:g_hotle/widgets/main_button.dart';
import 'package:g_hotle/widgets/main_container.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                              'CHECK YOUR PHONE',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),

                        Text(
                          'We’ve sent a code to your phone',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),

                        SizedBox(height: 10.h),

                        OtpPinField(
                          key: _otpPinFieldController,
                          maxLength: 4,
                          autoFocus: true,
                          fieldWidth: 52.w,
                          fieldHeight: 52.h,
                          otpPinFieldDecoration: OtpPinFieldDecoration.custom,
                          otpPinFieldStyle: OtpPinFieldStyle(
                            filledFieldBackgroundColor: Color(0xFFD9D9D9),
                            defaultFieldBackgroundColor: Color(0xFFD9D9D9),
                            defaultFieldBorderColor: Color(0xFFD9D9D9),
                            filledFieldBorderColor: Color(0xFFD9D9D9),
                            fieldBorderRadius: 0,
                            activeFieldBackgroundColor: Color(0xFFD9D9D9),
                            activeFieldBorderColor: Color(0xFFD9D9D9),
                          ),
                          onSubmit: (String text) {},
                          onChange: (String text) {},
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Resend another code 00:40',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'RESEND CODE',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black.withOpacity(.3),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black.withOpacity(.3),
                          ),
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
                          MaterialPageRoute(
                            builder: (context) => ChangePasswordScreen(),
                          ),
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
