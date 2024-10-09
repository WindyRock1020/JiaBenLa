import 'package:flutter/material.dart';
import '../drawer.dart';
import '../restauranttitlestate.dart';

class chiaYiDrink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('飲料十大推薦'),
        backgroundColor: Color(0xFFFFEDC0),
      ),
      drawer: ResDrawer(),
      body: ListView(
        children: <Widget>[
          RestaurantTile(name: '知更鳥巢鮮果茶飲', details: '嘉義市西區國華街262號', imagePath: 'assets/robin.jpg'),
          RestaurantTile(name: '源興御香屋', details: '嘉義市西區中山路321號', imagePath: 'assets/yu.jpg'),
          RestaurantTile(name: '榮興茶行', details: '嘉義市西區民族路601號', imagePath: 'assets/rongxing.jpg'),
          RestaurantTile(name: '穀壹', details: '嘉義市西區北榮街76號', imagePath: 'assets/goodtoeat.jpg'),
          RestaurantTile(name: '林家粉圓', details: '嘉義縣中埔鄉中山路五段991號', imagePath: 'assets/lins.jpg'),
          RestaurantTile(name: '韻沏好', details: '嘉義市西區民權路422號', imagePath: 'assets/aroma.jpg'),
          RestaurantTile(name: 'LoHa甘丹輕茶飲', details: '嘉義市民族路594號', imagePath: 'assets/loha.jpg'),
          RestaurantTile(name: 'Long Stay 龍喜嗲', details: '嘉義市東區民權路38-1號號', imagePath: 'assets/longstay.jpg'),
          RestaurantTile(name: '樂在飲事所', details: '  嘉義市西區德明路97號', imagePath: 'assets/letea.jpg'),
          RestaurantTile(name: '樂法 Le Phare ', details: '嘉義縣民雄鄉建國路二段120之70號', imagePath: 'assets/laphare.jpg'),
        ],
      ),
    );
  }
}
