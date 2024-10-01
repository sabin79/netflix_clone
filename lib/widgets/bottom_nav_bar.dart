import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/homeScreen.dart';
import 'package:netflix_clone/screens/new_and_hot.dart';
import 'package:netflix_clone/screens/search_screens.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "search",
              ),
              Tab(
                icon: Icon(Icons.photo_library_outlined),
                text: "New and hot",
              ),
            ],
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff9999999),
          ),
        ),
        body: TabBarView(
            children: [HomeScreen(), SearchScreen(), NewAndHotScreen()]),
      ),
    );
  }
}
