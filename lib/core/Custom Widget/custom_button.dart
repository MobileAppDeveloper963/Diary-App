import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  double? height;
  double? width;
  String text;
  VoidCallback onTap;
  double? size;

  MainButton(
      {required this.text,
      required this.onTap,
      this.size = 16,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? height ?? double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffFFB347),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
