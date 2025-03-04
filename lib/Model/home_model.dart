import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeModel {
  Color col;
  String? title;
  String? time;
  String? subtitle;
  String complete;
  String? text;

  HomeModel(
      {required this.col,
      this.title,
      this.time,
      this.subtitle,
      required this.complete,
      this.text});
}
