import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/button.dart';
import 'package:spotify_clone/widgets/text.dart';

class TodayHitsWidget extends StatefulWidget {
  const TodayHitsWidget({super.key});

  @override
  State<TodayHitsWidget> createState() => _TodayHitsWidgetState();
}

class _TodayHitsWidgetState extends State<TodayHitsWidget> {
  Widget _itemTopHits({required int index}) {
    return Container(
      width: 128,
      height: double.infinity,
      margin: index == 0
          ? const EdgeInsets.only(left: 32, right: 16)
          : index == 4
              ? const EdgeInsets.only(right: 32)
              : const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 16,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    AppPaths.imageTodayHits,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: ButtonsUtil.inkWellCustom(
                  child: ClipOval(
                    child: Container(
                      width: 20,
                      height: 20,
                      color: AppColors.color818181,
                      padding: const EdgeInsets.all(5),
                      child: SvgPicture.asset(AppPaths.icPlay),
                    ),
                  ),
                  onTap: () {},
                  radius: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          TextUtils.text(
            text: AppWords.runtuh,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 4),
          TextUtils.text(
            text: AppWords.descriptionTopHits,
            fontSize: 12,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: TextUtils.text(
            text: AppWords.todayHits,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => _itemTopHits(index: index),
          ),
        ),
      ],
    );
  }
}
