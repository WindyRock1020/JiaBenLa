import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category.dart';
import 'favoritePage/favorite_page.dart';

class ResDrawer extends StatelessWidget {
  ResDrawer();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 80,  // Reduced height here
            child: DrawerHeader(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Custom padding around the text
                child: Text('選單', style: TextStyle(color: Colors.black, fontSize: 24)),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFFEDC0),
              ),
              margin: EdgeInsets.all(0),  // Remove margins if needed
              padding: EdgeInsets.all(0),  // Adjust padding if needed
            ),
          ),
          ListTile(
            title: Text('首頁'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Category())); // Close the drawer
            },
          ),
          ListTile(
            title: Text('設置'),
            onTap: () {
              // Navigate to settings page
            },
          ),
          ListTile(
            title: Text('我的最愛'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => favoritePage()));
            },
          ),
          // Add more options as needed...
        ],
      ),
    );
  }
}