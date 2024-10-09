import 'package:flutter/material.dart';
import '../drawer.dart';
import '../restauranttitlestate.dart';

class coldNoodles extends StatelessWidget {
  const coldNoodles({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('嘉義涼麵十大推薦'),
        backgroundColor: Color(0xFFFFEDC0),
      ),
      drawer: ResDrawer(),
      body: ListView(
        children: <Widget>[
          RestaurantTile(name: '諸羅山社涼麵店', details: '嘉義市西區民族路638號', imagePath: 'assets/jurou.png'),
          RestaurantTile(name: '黃記涼麵涼圓', details: '嘉義市東區興中街6號', imagePath: 'assets/huang.png'),
          RestaurantTile(name: '崇文錦魯麵', details: '嘉義市東區崇文街107號', imagePath: 'assets/chongwen.png'),
          RestaurantTile(name: '二丫頭麻辣涼麵', details: '嘉義市東區民族路170號', imagePath: 'assets/two.png'),
          RestaurantTile(name: '涼麵四味果汁 總店', details: '嘉義市西區信義路48號', imagePath: 'assets/four.png'),
          RestaurantTile(name: '竹下涼麵', details: '嘉義縣水上鄉中興路157號', imagePath: 'assets/bamboo.png'),
          RestaurantTile(name: '公園老店涼麵', details: '嘉義市東區維新路36號', imagePath: 'assets/park.png'),
          RestaurantTile(name: '黑人涼麵', details: '嘉義市西區新建街97號', imagePath: 'assets/niggar.png'),
          RestaurantTile(name: '小伍妹麻辣涼麵', details: '嘉義市東區公明路282號', imagePath: 'assets/five.png'),
          RestaurantTile(name: '月女涼麵', details: '嘉義市西區民生北路255號', imagePath: 'assets/moon.png'),
        ],
      ),
    );
  }
}
