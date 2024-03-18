import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern/core/color/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigatorWidget extends StatelessWidget {
  const BottomNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: indexChangeNotifier,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
            backgroundColor: colorWhite,
            elevation: 4,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            selectedItemColor: colorBlueApp,
            unselectedItemColor: colorGrey,
            selectedIconTheme: const IconThemeData(color: colorBlueApp),
            unselectedIconTheme: const IconThemeData(color: colorGrey),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.book), label: 'Lern'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.circle_grid_3x3), label: 'Hub'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 12,
                  ),
                  label: 'Profile')
            ]);
      },
    );
  }
}
