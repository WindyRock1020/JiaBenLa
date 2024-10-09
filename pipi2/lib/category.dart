import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pipi2/recommPage/chiayi_drink.dart';
import 'package:pipi2/recommPage/cold_noodles.dart';
import 'package:pipi2/recommPage/humei_market.dart';
import 'package:pipi2/recommPage/wenhua_market.dart';
import 'recommPage/turkey_rice.dart';

class Category extends StatelessWidget{
  const Category({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text('首頁'),
      centerTitle: true,
      backgroundColor: Color(0xFFFFEDC0),
    );
    final btn1 = ElevatedButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Turkey_rice())),
      child: const Text('火雞肉飯十大推薦',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD8F4F8)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      )
    );

    final btn2 = ElevatedButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => coldNoodles())),
      child: const Text('涼麵十大推薦',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD8F4F8)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      )
    );

    final btn3 = ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => wenHuaMarket())),
      child: const Text('文化路小吃十大推薦',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD8F4F8)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
    );

    final btn4 = ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => huMeiMarket())),
      child: const Text('湖美夜市十大推薦',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD8F4F8)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
    );

    final btn5 = ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => chiaYiDrink())),
      child: const Text('飲料店十大推薦',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD8F4F8)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
    );

    final topic = const Text('嘉義特色美食推薦',
      style: TextStyle(
        fontSize: 30,
      ),
    );
    final buttons = Center(
      child: Column(
        children: <Widget>[
          Container(child: btn1,width: 250,height:56,margin: const EdgeInsets.symmetric(vertical: 18),),
          Container(child: btn2,width: 250,height:56,margin: const EdgeInsets.symmetric(vertical: 18),),
          Container(child: btn3,width: 250,height:56,margin: const EdgeInsets.symmetric(vertical: 18),),
          Container(child: btn4,width: 250,height:56,margin: const EdgeInsets.symmetric(vertical: 18),),
          Container(child: btn5,width: 250,height:56,margin: const EdgeInsets.symmetric(vertical: 18),),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),


    );

    final widget = Container(
      child: Column(
        children: <Widget>[
          Container(child: topic,margin: const EdgeInsets.symmetric(vertical: 25),),
          buttons],
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
    );

    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );

    return appHomePage;
  }
}