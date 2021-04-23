import 'package:flutter/material.dart';
import 'package:meals_flutter_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Add Filters",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
              children: <Widget>[
                SwitchListTile(
                  value: _glutenFree,
                  title: Text('Gluten-free'),
                  onChanged: (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  },
                ),
                SwitchListTile(
                  value: _vegetarian,
                  title: Text('Vegetarian'),
                  onChanged: (value) {
                    setState(() {
                      _vegetarian = value;
                    });
                  },
                ),
                SwitchListTile(
                  value: _vegan,
                  title: Text('Vegan'),
                  onChanged: (value) {
                    setState(() {
                      _vegan = value;
                    });
                  },
                ),
                SwitchListTile(
                  value: _lactoseFree,
                  title: Text('Lactose-free'),
                  onChanged: (value) {
                    setState(() {
                      _lactoseFree = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
