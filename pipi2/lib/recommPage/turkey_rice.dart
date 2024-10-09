import 'package:flutter/material.dart';
import '../category.dart';
import '../restauranttitlestate.dart';
import '../favoritePage/favorite_page.dart';
import '../drawer.dart';
void main() => runApp(Turkey_rice());

class Turkey_rice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '火雞肉飯十大推薦',
      home: Scaffold(
        appBar: AppBar(
          title: Text('火雞肉飯十大推薦'),
          backgroundColor: Color(0xFFFFEDC0),
        ),
        drawer: ResDrawer(),
        body: ListView(
          children: <Widget>[
            RestaurantTile(name: '阿樓師火雞肉飯', details: '嘉義市東區吳鳳北路102號', imagePath: 'assets/alo.png'),
            RestaurantTile(name: '和平火雞肉飯', details: '嘉義市東區和平路107號', imagePath: 'assets/peace.png'),
            RestaurantTile(name: '阿溪火雞肉飯', details: '嘉義市西區仁愛路356號', imagePath: 'assets/ashu.png'),
            RestaurantTile(name: '民主火雞肉飯', details: '嘉義市東區民族路149號', imagePath: 'assets/minch.png'),
            RestaurantTile(name: '可口火雞肉飯', details: '嘉義市東區公明路90號', imagePath: 'assets/good.png'),
            RestaurantTile(name: '阿宏師火雞肉飯', details: '嘉義市東區光華路108號', imagePath: 'assets/aho.png'),
            RestaurantTile(name: '檜町火雞肉飯', details: '嘉義市東區吳鳳北路101號', imagePath: 'assets/fast.png'),
            RestaurantTile(name: '東門火雞肉飯', details: '嘉義市西區新民路846號', imagePath: 'assets/don.png'),
            RestaurantTile(name: '阿霞火雞肉飯', details: '嘉義市東區文化路119號', imagePath: 'assets/asha.png'),
            RestaurantTile(name: '微笑火雞肉飯', details: '嘉義縣民雄鄉建國路二段56號', imagePath: 'assets/smile.png'),
          ],
        ),
      ),
    );
  }
}
