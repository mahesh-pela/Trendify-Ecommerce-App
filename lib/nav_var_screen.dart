import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trendify/Screens/Favourite/favouriteScreen.dart';
import 'package:trendify/Screens/Home/homeScreen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  //adding state variable to track the current index
  int _currentIndex = 0;
  final screens = [const Homescreen(), const Favouritescreen(), Container(color: Colors.pink), Container(color: Colors.yellow)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      bottomNavigationBar: NavigationBar(
        backgroundColor: CupertinoColors.white,
        height: 80,
        elevation: 0,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index){
          setState(() {
            _currentIndex = index;
          });
        },

        destinations: const[
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favourite'),
          NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile',)
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}


