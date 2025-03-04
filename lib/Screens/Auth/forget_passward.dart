import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Custom%20Widget/custom_textfield.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgetPassward extends StatelessWidget {
  const ForgetPassward({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              2.h.height,
              InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Icon(Icons.arrow_back_ios_new)),
              5.h.height,
              const Text(
                'Forget Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Text(
                  'Enter your registered email address to get verification code',
                  style: TextStyle(
                    color: Color(0xff90A3BF),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              1.h.height,
              TextFieldWidget(
                hintText: "   Enter your Email",
                keyboardType: TextInputType.emailAddress,
              ),
              3.h.height,
              MainButton(
                text: 'Send',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.verifyAccount);
                },
              )
            ])),
      ),
    );
  }
}
