import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Custom%20Widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

enum Gender {
  Male,
  Female,
}

class _ProfileState extends State<Profile> {
  // bool buttoncolor = true;

  Gender _gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xffE2E8F0),
                          width: 2.0,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: -10,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffFFB347),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                " Fullname",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFieldWidget(
                hintText: "   Enter Your Name ",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                " Email",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
             TextFieldWidget(
                hintText: "   Enter your Email",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                " Age",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFieldWidget(
                hintText: "   Enter Your Age",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                " Gender",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("  Male"),
                        Radio(
                            activeColor: const Color(0xffFFB347),
                            value: Gender.Male,
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value!;
                              });
                            })
                      ],
                    ),
                    height: 7.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffE2E8F0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("  Female"),
                        Radio(
                            activeColor: const Color(0xffFFB347),
                            value: Gender.Female,
                            groupValue: _gender,
                            onChanged: (Gander) {
                              setState(() {
                                _gender = Gander!;
                              });
                            }),
                      ],
                    ),
                    height: 7.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffE2E8F0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                " Phone",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
               TextFieldWidget(
                hintText: "   Enter Your Phone",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                " Location",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
             TextFieldWidget(
                hintText: "   Enter Your Location",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              MainButton(text: "Save", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
