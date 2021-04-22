import 'package:flutter/material.dart';
import 'package:meals_flutter_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.grey),
            child: Text(
              'Love Cooking',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Theme.of(context).accentColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 25,
            ),
            title: Text(
              'Meals',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed', fontWeight: FontWeight.w700),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 25,
            ),
            title: Text(
              'Filters',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed', fontWeight: FontWeight.w700),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
