import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget {
  final VoidCallback onGridViewTap;
  final VoidCallback onListViewTap;

  CustomAppbar({
    Key? key,
    required this.onGridViewTap,
    required this.onListViewTap,
  }) : super(key: key);

  bool choseList = false;

  bool listshow = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) => Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffC3D4E9)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.dehaze_sharp,
                  color: Color(0xff808D9E),
                )),
          ),
        ),
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: onGridViewTap,
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff808D9E),
                    )),
                child: const Icon(
                  Icons.grid_view,
                  color: Color(0xff808D9E),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: onListViewTap,
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff808D9E),
                    )),
                child: const Icon(
                  Icons.tune,
                  color: Color(0xff808D9E),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
