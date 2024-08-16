import 'package:flutter/material.dart';
import 'package:session_7/screens/category.dart';
import 'package:session_7/screens/home.dart';
import 'package:session_7/screens/profile.dart';
import 'package:session_7/screens/search.dart';
import 'package:session_7/screens/wish_list.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomePage(),
    CategoryPage(),
    SearchPage(),
    WishList(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 148, 123, 235),
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;              
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home', // Added label for better accessibility
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category', // Added label for better accessibility
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search', // Added label for better accessibility
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Wishlist', // Added label for better accessibility
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile', // Added label for better accessibility
          ),
        ],
      ),
    );
  }
}
