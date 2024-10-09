import 'package:flutter/material.dart';
import '../drawer.dart';
import '../restauranttitlestate.dart';

class huMeiMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('湖美夜市十大推薦'),
        backgroundColor: Color(0xFFFFEDC0),
      ),
      drawer: ResDrawer(),
      body: ListView(
        children: <Widget>[
          RestaurantTile(name: '八玥工坊銅鑼燒', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/eightmoon.jpg'),
          RestaurantTile(name: '堂薯薯臭薯條', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/stinky.jpg'),
          RestaurantTile(name: '春發拔絲地瓜', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/spring.jpg'),
          RestaurantTile(name: '賴.古早味玉米', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/lai.jpg'),
          RestaurantTile(name: '能量香蕉煎餅', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/energy.jpg'),
          RestaurantTile(name: '來個刈包', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/comeon.jpg'),
          RestaurantTile(name: '鮮味手工鮮蝦貢丸', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/shirmp.jpg'),
          RestaurantTile(name: '一銀仙草', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/onesilver.jpg'),
          RestaurantTile(name: '雅淳水果茶', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/fruit.jpg'),
          RestaurantTile(name: '麻辣乾鍋', details: '嘉義市西區湖美八路與健康二路口', imagePath: 'assets/hotpot.jpg'),
        ],
      ),
    );
  }
}
