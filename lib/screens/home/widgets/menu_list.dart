import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/controllers/home_controller.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/button.dart';
import 'package:spotify_clone/widgets/text.dart';

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({super.key});

  @override
  State<MenuListWidget> createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {
  final HomeController homeController = Get.find(tag: AppWords.home);
  Widget _itemTab({required int index}) {
    return Obx(
      () => Container(
        margin: index == 0
            ? const EdgeInsets.only(left: 32, right: 48)
            : index == homeController.menus.length - 1
                ? const EdgeInsets.only(right: 32)
                : const EdgeInsets.only(right: 48),
        child: ButtonsUtil.inkWellCustom(
          child: Column(
            children: [
              TextUtils.text(
                text: homeController.menus[index],
                fontWeight:
                    homeController.homeMenuListCurrentIndex.value == index
                        ? FontWeight.w700
                        : FontWeight.w600,
                fontSize: 20,
                color: homeController.homeMenuListCurrentIndex.value == index
                    ? Colors.white
                    : Colors.white.withOpacity(0.6),
              ),
              const SizedBox(height: 4),
              homeController.homeMenuListCurrentIndex.value == index
                  ? SvgPicture.asset(AppPaths.icLineHome)
                  : Container(),
            ],
          ),
          onTap: () {
            homeController.homeMenuListCurrentIndex.value = index;
          },
        ),
      ),
    );
  }

  Widget _itemMusicInTab() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 32, right: 32),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              AppPaths.imageMusicTab,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils.text(
                      text: AppWords.adele,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    const SizedBox(height: 4),
                    TextUtils.text(
                      text: '43,877,516 ${AppWords.monthlyListeners}',
                      fontSize: 12,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeController.menus.length,
              itemBuilder: (context, index) => _itemTab(index: index),
            ),
          ),
          Container(
            width: double.infinity,
            height: 16,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.color333333.withOpacity(0.4),
                  AppColors.colorD9D9D9.withOpacity(0),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) => _itemMusicInTab(),
          ),
        ],
      ),
    );
  }
}
