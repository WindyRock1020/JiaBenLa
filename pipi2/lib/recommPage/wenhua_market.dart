import 'package:flutter/material.dart';
import '../drawer.dart';
import '../restauranttitlestate.dart';

class wenHuaMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文化夜市十大推薦'),
        backgroundColor: Color(0xFFFFEDC0),
      ),
      drawer: ResDrawer(),
      body: ListView(
        children: <Widget>[
          RestaurantTile(name: '林聰明沙鍋魚頭', details: '嘉義市東區中正路361號', imagePath: 'assets/lin.png'),
          RestaurantTile(name: '阿娥豆花', details: '嘉義市東區延平街233號', imagePath: 'assets/al.png'),
          RestaurantTile(name: '阿岸米糕', details: '嘉義市東區民族路420號', imagePath: 'assets/aan.png'),
          RestaurantTile(name: '阿信美食', details: '嘉義市東區民族路149號', imagePath: 'assets/asin.png'),
          RestaurantTile(name: '黃毛丫頭東山鴨頭', details: '嘉義市西區文化路77號', imagePath: 'assets/yellow.png'),
          RestaurantTile(name: '隱燃燒肉丼食堂', details: '嘉義市西區中正路488號', imagePath: 'assets/shadow.png'),
          RestaurantTile(name: '乖乖滷味', details: '嘉義市西區文化路108號', imagePath: 'assets/clever.png'),
          RestaurantTile(name: '珍珍蚵仔煎海產粥', details: '嘉義市東區文化路夜市內', imagePath: 'assets/jang.png'),
          RestaurantTile(name: '龍承綠豆沙', details: '嘉義市東區文化路178號', imagePath: 'assets/dragon.png'),
          RestaurantTile(name: '羅山生炒鱔魚麵', details: '嘉義市東區延平街270-1號', imagePath: 'assets/luo.png'),
        ],
      ),
    );
  }
}
