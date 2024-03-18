import 'package:flutter/material.dart';
import 'package:intern/presentation/bottom_nav/widget/widget_bottom.dart';
import 'package:intern/presentation/chat/chat_screen.dart';
import 'package:intern/presentation/home/home.dart';
import 'package:intern/presentation/hub/hub_screen.dart';
import 'package:intern/presentation/learn/learn_screen.dart';
import 'package:intern/presentation/profile/profile_screen.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});

  final pages = [
    const HomeScrn(),
    const LearnScrn(),
    const HubScrn(),
    const ChatScrn(),
    const ProfileScrn(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: indexChangeNotifier,
        builder: (context, index, child) {
          return pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }
}
