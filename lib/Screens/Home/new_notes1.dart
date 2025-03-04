import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddNewNotes1 extends StatefulWidget {
  AddNewNotes1({super.key});

  @override
  State<AddNewNotes1> createState() => _AddNewNotes1State();
}

class _AddNewNotes1State extends State<AddNewNotes1> {
  List arrText = ["Personal", "Shopping", "Wishlist", "Work"];

  bool listshow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              2.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffC3D4E9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: const Icon(Icons.arrow_back_ios_new)),
                  ),
                  Text(
                    "New Note",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    child: Text(
                      "Save",
                      style: TextStyle(color: Color(0xffFFB347), fontSize: 20),
                    ),
                  )
                ],
              ),
              3.h.height,
              Text(
                'Task Name',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              1.h.height,
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xff90A3BF))),
                    hintText: 'Enter Task Here '),
              ),
              2.h.height,
              Text(
                'Due Date',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              1.h.height,
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xff90A3BF))),
                    hintText: 'dd / mm / yyyy',
                    suffixIcon: Icon(Icons.date_range_rounded)),
              ),
              2.h.height,
              Text(
                'Add As',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              1.h.height,
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xff90A3BF))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("  Default"),
                      IconButton(
                          onPressed: () {
                            listshow == true
                                ? listshow = false
                                : listshow = true;
                            setState(() {});
                          },
                          icon: Icon(Icons.keyboard_arrow_down_outlined)),
                    ]),
              ),

              //List view
              //List view
              2.h.height,
              listshow == true
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors
                                .grey.shade400, // Shadow color with opacity
                            spreadRadius: 2, // How much the shadow spreads
                            blurRadius: 5, // How soft the shadow is
                            offset:
                                Offset(0, 2), // Horizontal and vertical offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: ListView.separated(
                            shrinkWrap: true,
                            padding: EdgeInsets.all(0),
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Text(
                                arrText[index],
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 30,
                              );
                            },
                            itemCount: arrText.length),
                      ),
                    )
                  : SizedBox(),
            ]),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: MainButton(
            text: "Next",
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.newNotes2);
            },
          ),
        ));
  }
}
