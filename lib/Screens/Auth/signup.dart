import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.h.height,
              InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Icon(Icons.arrow_back_ios_new)),
              5.h.height,
              const Text(
                'Signup',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Please enter email & password',
                style: TextStyle(color: Color(0xff90A3BF)),
              ),
              2.h.height,
              const Text(
                'Name',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              1.h.height,
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Enter Your Full Name '),
              ),
              2.h.height,
              const Text(
                'Email',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              1.h.height,
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              2.h.height,
              const Text(
                'Password',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              1.h.height,
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
              2.h.height,
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0xffFFB347),
                    value: checkbox,
                    onChanged: (value) {
                      setState(() {
                        checkbox = value!;
                      });
                    },
                  ),
                  const Text('I agree with the '),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Color(0xffFFB347),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffFFB347),
                        decorationThickness: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              2.h.height,
              MainButton(
                text: 'Register',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.homeList);
                },
              ),
              2.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xffFFB347)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
