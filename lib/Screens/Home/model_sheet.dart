import 'package:diary_app/Model/home_model.dart';
import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtomSheetWidget extends StatefulWidget {
  const ButtomSheetWidget({super.key});

  @override
  State<ButtomSheetWidget> createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheetWidget> {
//  bool choseList = false;

  bool listshow = false;
  bool statusshow = false;
  List<HomeModel> arrList = [
    HomeModel(
        col: const Color(0xff24CAFF), complete: "Running", text: "Personal"),
    HomeModel(
        col: const Color(0xffE964FF), complete: "Upcomming", text: "Shopping"),
    HomeModel(
        col: const Color(0xffFF9A24), complete: "Incomplete", text: "Wishlist"),
    HomeModel(col: const Color(0xff00B61D), complete: "Completed", text: "Work")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 180,
                height: 5,
                decoration: BoxDecoration(
                    color: const Color(0xffE2E8F0),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            2.h.height,
            const Text(
              'List',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            1.h.height,
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xffE2E8F0), width: 2),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("  Default"),
                    IconButton(
                        onPressed: () {
                          statusshow = false;
                          listshow == true ? listshow = false : listshow = true;
                          setState(() {});
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined)),
                  ]),
            ),
            listshow == true
                ? Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(0, 2),
                        spreadRadius: 2,
                        color: Colors.grey.shade400,
                      )
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                          padding: EdgeInsets.all(0),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Text(arrList[index].complete);
                          },
                          separatorBuilder: (context, index) => Divider(
                                height: 20,
                              ),
                          itemCount: arrList.length),
                    ),
                  )
                : SizedBox(),
            2.h.height,
            const Text(
              'Status',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            1.h.height,
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE2E8F0), width: 2)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("  Default"),
                    IconButton(
                        onPressed: () {
                          listshow = false;
                          statusshow == true
                              ? statusshow = false
                              : statusshow = true;
                          setState(() {});
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined)),
                  ]),
            ),
            statusshow == true
                ? Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5,
                          // blurStyle: BlurStyle.inner,
                          offset: Offset(0, 2),
                          spreadRadius: 2)
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Text(arrList[index].text!,
                              style: TextStyle(color: arrList[index].col));
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 25,
                        ),
                        itemCount: arrList.length,
                      ),
                    ),
                  )
                : SizedBox(),
            2.h.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(width: 40.w, text: "Clear", onTap: () {}),
                MainButton(
                    width: 40.w,
                    text: "Go",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.newNotes1);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
