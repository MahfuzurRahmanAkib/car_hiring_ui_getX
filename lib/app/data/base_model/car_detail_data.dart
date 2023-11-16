import 'package:flutter/material.dart';

class CarDetails {
  String title, subTitle, link, description, details;
  Color listColor;
  IconData icon;

  CarDetails({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.description,
    required this.details,
    required this.listColor,
    this.icon = Icons.star_border_sharp,
  });
}