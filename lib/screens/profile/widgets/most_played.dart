import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/text.dart';

class MostPlayed extends StatefulWidget {
  const MostPlayed({super.key});

  @override
  State<MostPlayed> createState() => _MostPlayedState();
}

class _MostPlayedState extends State<MostPlayed> {
  Widget _itemMostPlayed() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 32, right: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              AppPaths.mostView,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils.text(
                        text: AppWords.mostlyTitle,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      const SizedBox(height: 4),
                      TextUtils.text(
                        text: AppWords.mostlyName,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: RotatedBox(
                    quarterTurns: 1,
                    child: SvgPicture.asset(AppPaths.icMore),
                  ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: TextUtils.text(
            text: AppWords.mostlyPlayed,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => _itemMostPlayed(),
        ),
      ],
    );
  }
}
