import 'package:flutter/material.dart';
import 'package:meals_flutter_app/screens/categories_screen.dart';
import 'package:meals_flutter_app/screens/favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

//top tab navigation

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       // initialIndex: 0,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meals'),
//           bottom: TabBar(
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(
//                   Icons.category,
//                 ),
//                 text: 'Categories',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.star,
//                 ),
//                 text: 'Favorites',
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             CategoriesScreen(),
//             FavouritesScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouritesScreen(), 'title': 'Favourites'},
  ];
  int _selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[_selectedPageIndex]['title']),
      ),
      body: pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
