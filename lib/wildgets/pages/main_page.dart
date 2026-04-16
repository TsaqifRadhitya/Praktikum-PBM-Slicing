import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing/wildgets/explore_screen.dart';
import 'package:slicing/wildgets/home_screen.dart';
import 'package:slicing/wildgets/message_screen.dart';
import 'package:slicing/wildgets/profile_screen.dart';
import 'package:slicing/wildgets/reels_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int activeIndexStack = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: activeIndexStack,
        children: [
          const HomeScreen(),
          const ReelsScreen(),
          const MessageScreen(),
          const ExploreScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        iconSize: 25,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() {
          activeIndexStack = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              activeIndexStack == 0 ? Icons.home : Icons.home_outlined,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(0.1),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(8),
                color: activeIndexStack == 1 ? Colors.white : Colors.black,
              ),
              child: Icon(
                activeIndexStack == 1
                    ? Icons.play_arrow
                    : Icons.play_arrow_outlined,
                size: 20,
                color: activeIndexStack == 1 ? Colors.black : Colors.white,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              activeIndexStack == 2 ? LucideIcons.send : LucideIcons.send,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              activeIndexStack == 3
                  ? LucideIcons.search500
                  : LucideIcons.search,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              activeIndexStack == 4
                  ? LucideIcons.circleUserRound
                  : LucideIcons.circleUserRound,
              color: Colors.white,
            ),
            label: "",
          ),
        ],
        currentIndex: activeIndexStack,
      ),
    );
  }
}
