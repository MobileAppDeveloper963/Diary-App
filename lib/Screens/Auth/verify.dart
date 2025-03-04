import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            'Verify Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Text('Verify your account by entering verification',
              style: TextStyle(
                color: Color(0xff90A3BF),
                fontSize: 12,
              )),
          Row(children: [
            Text('code we sent to ',
                style: TextStyle(
                  color: Color(0xff90A3BF),
                  fontSize: 12,
                ))
          ]),
          2.h.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 48.32,
                width: 55,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
          3.h.height,
          MainButton(
              text: "Confirm",
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.resetPassword);
              })
        ]),
      )),
    );
  }
}
