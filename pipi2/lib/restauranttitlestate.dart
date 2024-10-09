import 'package:flutter/material.dart';
import 'detailscreen.dart';
import 'favoritePage/favorite.dart';
import 'intro.dart';
class RestaurantTile extends StatefulWidget {
  final String name;
  final String details;
  final String imagePath;
  const RestaurantTile({super.key, required this.name, required this.details, required this.imagePath});
  @override
  _RestaurantTileState createState() => _RestaurantTileState();
}

class _RestaurantTileState extends State<RestaurantTile> {
  bool isFavorited = false;
  @override
  void initState() {
    super.initState();
    isFavorited = Global.favorites.any((item) => item.name == widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RestaurantPage(name:widget.name,details:widget.details,imagePath:widget.imagePath)),
        );
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 390,
              child: Image.asset(widget.imagePath, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
              child: ListTile(
                title: Text(widget.name),
                subtitle: Text(widget.details),
                trailing: IconButton(
                  icon: Icon(
                    isFavorited ? Icons.star : Icons.star_border,
                    color: isFavorited ? Colors.yellow : null,
                    size: isFavorited ? 30.0 : 24.0,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorited = !isFavorited;
                      if (isFavorited) {
                        Global.favorites.add(Restaurant(name: widget.name, details: widget.details, imagePath: widget.imagePath));
                      } else {
                        Global.favorites.removeWhere((item) => item.name == widget.name);
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
