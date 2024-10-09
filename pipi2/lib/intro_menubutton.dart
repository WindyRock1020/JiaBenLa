import 'package:flutter/material.dart';

class intro_menubutton extends StatelessWidget {
  final String imagePath;
  final String iconPath;
  intro_menubutton({required this.imagePath, required this.iconPath});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: Stack(
                children: [
                  Image.asset(imagePath),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.close, color: Colors.white, size: 30),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Image.asset(
        iconPath,
        width: 30,
        height: 30,
      ),
    );
  }
}
