import 'package:flutter/material.dart';

class Global {
  static List<Restaurant> favorites = [];
}

class Restaurant {
  final String name;
  final String details;
  final String imagePath;
  Restaurant({required this.name, required this.details, required this.imagePath});
}
