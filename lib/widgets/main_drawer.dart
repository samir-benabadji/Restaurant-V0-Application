import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.indigo,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
            height: Get.height * 0.15,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.indigo,
            child: Text(
              'Drawer Menu',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: Get.height * 0.025,
          ),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
