import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Custom%20Widget/custom_textfield.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.height,
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new)),
            2.h.height,
            Text(
              "Reset Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            1.h.height,
            Text(
              "Enter your new password and confirm password",
              style: TextStyle(color: Color(0xff90A3BF)),
            ),
            2.h.height,
            Text(
              "Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            1.h.height,
            TextFieldWidget(
              hintText: "Enter Your Password",
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xff64748B),
              ),
            ),
            2.h.height,
            Text(
              "Confirm Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            1.h.height,
            TextFieldWidget(
              hintText: "Enter Your Confirm Password",
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xff64748B),
              ),
            ),
            3.h.height,
            MainButton(
              text: "Confirm",
              onTap: () {},
            )
          ],
        ),
      )),
    );
  }
}
