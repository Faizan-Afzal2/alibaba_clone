// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alibaba_clone/controller/providers/main_screen_provider.dart';
import 'package:alibaba_clone/view/account_page.dart';
import 'package:alibaba_clone/view/cart_page.dart';
import 'package:alibaba_clone/view/components/styles.dart';
import 'package:alibaba_clone/view/home_page.dart';
import 'package:alibaba_clone/view/messaging_page.dart';
import 'package:alibaba_clone/view/tips_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreens extends StatefulWidget {
  MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  List<Widget> screens = [
    HomePage(),
    TipsPage(),
    MessagePage(),
    CartPage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar:
        Consumer<MainProvider>(builder: (context, provider, child) {
      return NavigationBar(
        indicatorColor: orange2,
        backgroundColor: white,
        surfaceTintColor: white,
        selectedIndex: Provider.of<MainProvider>(context).currentIndex,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (int index) {
          provider.updateIndex(index);
          setState(() {
            
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined,size:25),
            selectedIcon: Icon(Icons.home_outlined,size:25,color: white,),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.tips_and_updates,size:25),
            selectedIcon: Icon(Icons.tips_and_updates,size:25,color: white,),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.message_rounded,size:25),
            selectedIcon: Icon(Icons.message_rounded,size:25,color: white,),
            label: 'Saved',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart,size:25),
            selectedIcon: Icon(Icons.shopping_cart,size:25,color: white,),
            label: 'Info',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle,size:25),
            selectedIcon: Icon(Icons.account_circle,size:25,color: white,),
            label: 'Info',
          ),
        ],
      );
    }), body: Consumer<MainProvider>(builder: (context, provider, child) {
      return screens[provider.currentIndex];
    }));
  }
}
