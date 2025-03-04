import 'dart:math';

import 'package:diary_app/Model/home_model.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GridviewScreen extends StatefulWidget {
  GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  final Random _random = Random();

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
          col: Colors.green,
          title: "Meeting",
          time: "Sat, Dec 16",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Lacus placerat ut ut at mi. Eros et sed a fermentum non cursus. Eros arcu ultricies eget nulla id lacus cursus non. Adipiscing ultrices sollicitudin quis tincidunt id pulvinar.",
          complete: "Upcoming"),
      HomeModel(
          col: Colors.orange,
          title: "Office Work",
          time: "Sat, Dec 09",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Incomplete"),
      HomeModel(
          col: Colors.red,
          title: "Home Work",
          time: "6 hours",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Completed"),
      HomeModel(
          col: Colors.purple,
          title: "Books purchase",
          time: "2 Days",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Lacus placerat ut ut at mi. Eros et sed a fermentum non cursus. Eros arcu ultricies eget nulla id lacus cursus non. Adipiscing ultrices sollicitudin quis tincidunt id pulvinar.",
          complete: "Completed"),
      HomeModel(
          col: Colors.cyan,
          title: "Bike Tuning",
          time: "Week",
          subtitle:
              "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
          complete: "Completed"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.count(
        itemCount: userWork.length,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xffE2E8F0), width: 1),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              userWork[index].title!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              userWork[index].time!,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      0.2.h.height,
                      Text(
                        userWork[index].subtitle!,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.black54),
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
        },
      ),
    );
  }
}
