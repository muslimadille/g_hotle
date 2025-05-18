import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_hotle/widgets/custom_text_field.dart';
import 'package:g_hotle/widgets/main_button.dart';
import 'package:g_hotle/widgets/main_container.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? dropdownValue = 'Egypt';
  final List<String> items = [
    'Egypt',
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'India',
    'Brazil',
    'Japan',
  ];

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SIGN UP',
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
                        SizedBox(height: 20.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextField(
                                hintText: 'First Name',
                                controller: firstNameController,
                                keyboardType: TextInputType.emailAddress,
                                obscureText: false,
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: CustomTextField(
                                hintText: 'Last Name',
                                controller: lastNameController,
                                keyboardType: TextInputType.emailAddress,
                                obscureText: false,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10.h),

                        Text(
                          'Country/Region',
                          style: TextStyle(
                            fontSize: 7.5.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                            isExpanded: true,
                            underline: const SizedBox(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items:
                                items.map<DropdownMenuItem<String>>((
                                  String value,
                                ) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            hint: const Text('Select a country/city'),
                          ),
                        ),
                        SizedBox(height: 10.h),

                        IntlPhoneField(
                          decoration: InputDecoration(
                            labelText: 'Mobile Phone ',
                            labelStyle: TextStyle(
                              fontSize: 7.5.sp,
                              fontWeight: FontWeight.w300,
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          initialCountryCode: 'EG',

                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),

                        SizedBox(height: 10.h),

                        CustomTextField(
                          hintText: 'Email Address',
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                        ),

                        SizedBox(height: 10.h),

                        CustomTextField(
                          hintText: 'New Password',
                          controller: newPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,

                          suffixIcon: Image.asset(
                            'assets/icons/Eye off.png',
                            scale: 4,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '• Password must be 8-20 characters',
                          style: TextStyle(
                            fontSize: 7.5.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '• Password must have an upper case letter',
                          style: TextStyle(
                            fontSize: 7.5.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '• Password must have a lower case letter',
                          style: TextStyle(
                            fontSize: 7.5.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '• Password must have a number',
                          style: TextStyle(
                            fontSize: 7.5.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),

                        SizedBox(height: 10.h),

                        CustomTextField(
                          hintText: 'Confirm Password',
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,

                          suffixIcon: Image.asset(
                            'assets/icons/Eye off.png',
                            scale: 4,
                          ),
                        ),

                        SizedBox(height: 10.h),

                        GestureDetector(
                          onTap: () {},
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have an account? ',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: ' →',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {},
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Data Privacy Center',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: ' →',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {},
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Terms of Use',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: ' →',
                                  style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0.h,
                  child: MainButton(onTap: () {}, title: "JOIN NOW"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
