import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/controllers/main_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/screens/history/index.dart';
import 'package:spotify_clone/screens/home/index.dart';
import 'package:spotify_clone/screens/playlist/index.dart';
import 'package:spotify_clone/screens/profile/index.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/custom_navigator_bottom_tab.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainController mainController = Get.find(tag: AppRoutes.main);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.black,
        body: Obx(
          () => IndexedStack(
            index: mainController.menuIndexCurrent.value,
            children: const [
              HomePage(),
              PlaylistPage(),
              HistoryPage(),
              ProfilePage(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {},
          child: Image.asset(
            AppPaths.icLogoButton,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 110,
          child: FABBottomAppBar(
            height: double.infinity,
            centerItemText: '',
            backgroundColor: AppColors.color333333,
            notchedShape: const CircularNotchedRectangle(),
            items: [
              FABBottomAppBarItem(
                iconData: AppPaths.icHome,
                iconDataActive: AppPaths.icHomeActive,
                text: AppWords.home,
              ),
              FABBottomAppBarItem(
                iconData: AppPaths.icPlaylist,
                iconDataActive: AppPaths.icPlaylistActive,
                text: AppWords.playlist,
              ),
              FABBottomAppBarItem(
                iconData: AppPaths.icHistory,
                iconDataActive: AppPaths.icHistoryActive,
                text: AppWords.history,
              ),
              FABBottomAppBarItem(
                iconData: AppPaths.icUser,
                iconDataActive: AppPaths.icUserActive,
                text: AppWords.profile,
              ),
            ],
            currentIndex: mainController.menuIndexCurrent.value,
            onTabSelected: (int value) {
              mainController.menuIndexCurrent.value = value;
            },
          ),
        ),
      ),
    );
  }
}
