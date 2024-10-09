import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String details;
  final String imagePath;

  DetailScreen({required this.name, required this.details, required this.imagePath});


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(details),
            ),
          ],
        ),
      ),
    );
  }
}