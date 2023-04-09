import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/text.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final carouselController = CarouselController();
  Widget _itemBanner() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 32,
            left: 32,
            right: 32,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.colorD7BD1E,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtils.text(
                text: AppWords.popular,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 8),
              TextUtils.text(
                text: AppWords.sisaRasa,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 4),
              TextUtils.text(
                text: AppWords.mahalini,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 50,
          child: Image.asset(
            AppPaths.singerBanner,
            width: 144,
            height: double.infinity,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 152,
          child: CarouselSlider(
            carouselController: carouselController,
            items: [1, 2, 3, 4].map((e) => _itemBanner()).toList(),
            options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 28,
            right: 28,
            top: 28,
          ),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  carouselController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                icon: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  carouselController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
