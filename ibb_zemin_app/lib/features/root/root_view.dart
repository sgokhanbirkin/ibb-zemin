import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/features/achievement/achievement_view.dart';
import 'package:ibb_zemin_app/features/home/home_view.dart';
import 'package:ibb_zemin_app/features/profile/profile_view.dart';
import 'package:ibb_zemin_app/features/search/search_view.dart';

class RootView extends StatefulWidget {
  RootView({Key? key}) : super(key: key);

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: selectedIndex,
      children: const [
        HomeView(),
        SearchView(),
        AchievementView(),
        ProfileView(),
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            icon: selectedIndex == 0
                ? const Icon(Icons.home, color: Colors.orangeAccent)
                : const Icon(Icons.home, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            icon: selectedIndex == 1
                ? const Icon(Icons.search, color: Colors.orangeAccent)
                : const Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              icon: selectedIndex == 2
                  ? const Icon(Icons.emoji_events_outlined,
                      color: Colors.orangeAccent)
                  : const Icon(Icons.emoji_events_outlined,
                      color: Colors.grey)),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              icon: selectedIndex == 3
                  ? const Icon(Icons.person, color: Colors.orangeAccent)
                  : const Icon(Icons.person, color: Colors.grey)),
        ],
      ),
    );
  }
}
