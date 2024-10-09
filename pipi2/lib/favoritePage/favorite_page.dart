import 'package:flutter/material.dart';
import 'favorite.dart';
import 'favorite.dart';
import '../restauranttitlestate.dart';

class favoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("收藏內容"),
      ),
      body: ListView.builder(
        itemCount: Global.favorites.length,
        itemBuilder: (context, index) {
          final restaurant = Global.favorites[index];
          return RestaurantTile(name: restaurant.name, details: restaurant.details, imagePath: restaurant.imagePath);
        },
      ),
    );
  }
}