import 'dart:math';
import 'package:diary_app/Model/home_model.dart';
import 'package:diary_app/Screens/Home/appbar.dart';
import 'package:diary_app/Screens/Home/drawer.dart';
import 'package:diary_app/Screens/Home/gridview.dart';
import 'package:diary_app/Screens/Home/model_sheet.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Custom%20Widget/custom_textfield.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final Random _random = Random();

  // Generate a random color
  Color getRandomColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(256), // Red
      _random.nextInt(256), // Green
      _random.nextInt(256), // Blue
    );
  }

  late List<HomeModel> userWork;

  @override
  void initState() {
    super.initState();
    userWork = [
      HomeModel(
          col: getRandomColor(),
          title: "Research Work",
          time: "Mon, Dec 11",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Running"),
      HomeModel(
          col: getRandomColor(),
          title: "Meeting",
          time: "Sat, Dec 16",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Upcoming"),
      HomeModel(
          col: getRandomColor(),
          title: "Office Work",
          time: "Sat, Dec 09",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Incomplete"),
      HomeModel(
          col: getRandomColor(),
          title: "Home Work",
          time: "6 hours",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Lacus placerat ut ut at mi. Eros et sed a fermentum non cursus. Eros arcu ultricies eget nulla id lacus cursus non. Adipiscing ultrices sollicitudin quis tincidunt id pulvinar.",
          complete: "Completed"),
      HomeModel(
          col: getRandomColor(),
          title: "Books purchase",
          time: "2 Days",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Completed"),
      HomeModel(
          col: getRandomColor(),
          title: "Bike Tuning",
          time: "Week",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Completed"),
    ];
  }

  bool choseList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              CustomAppbar(
                onGridViewTap: () {
                  setState(() {
                    choseList = true;
                  });
                },
                onListViewTap: () {
                  setState(() {
                    choseList = false;
                  });
                },
              ),
              SizedBox(height: 20),
               TextFieldWidget(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff808D9E),
                  ),
                  hintText: "Search something here"),
              const SizedBox(height: 15),
              choseList
                  ? GridviewScreen()
                  : Expanded(
                      child: ListView.builder(
                          itemCount: userWork.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: const Color(0xffE2E8F0), width: 1),
                              ),
                              child: Row(
                                children: [
                                  2.w.width,
                                  Container(
                                    width: 6,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: userWork[index].col,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  4.w.width,
                                  Expanded(
                                    child: Column(
                                      children: [
                                        1.h.height,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              userWork[index].title!,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              userWork[index].time!,
                                              style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        0.2.h.height,
                                        Text(
                                          userWork[index].subtitle!,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        ),
                                        1.h.height,
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            userWork[index].complete,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: userWork[index].col,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })),
              MainButton(
                text: "Add New Note",
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (context) => ButtomSheetWidget());
                },
              )
            ]),
          ),
        ),
        drawer: const DrawerScreen());
  }
}
