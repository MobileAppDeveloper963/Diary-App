import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Custom%20Widget/custom_textfield.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:diary_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.h.height,
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                'Please enter email & password',
                style: TextStyle(
                  color: Color(0xff90A3BF),
                ),
              ),
              2.h.height,
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              1.h.height,
              TextFieldWidget(
                hintText: "Enter your Email",
                keyboardType: TextInputType.emailAddress,
              ),
              2.h.height,
              const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              1.h.height,
              TextFieldWidget(
                hintText: "Enter Your Password",
                keyboardType: TextInputType.emailAddress,
              ),
              2.h.height,
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.forgetPassword);
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xffFFB347)),
                  ),
                ),
              ),
              2.h.height,
              MainButton(
                text: 'Login',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.homeList);
                },
              ),
              2.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have an account? '),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signup);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
