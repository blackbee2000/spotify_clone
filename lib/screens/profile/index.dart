import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/screens/profile/widgets/most_played.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/appbar.dart';
import 'package:spotify_clone/widgets/text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: const BoxDecoration(
            color: AppColors.color333333,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(64),
              bottomRight: Radius.circular(64),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarUtils.appBarCustom(
            leading: Container(),
            leadingWidth: 0,
            title: TextUtils.text(
              text: AppWords.profile,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppPaths.icMore),
              ),
            ],
          ),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    AppPaths.avt,
                    width: 96,
                    height: 96,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                TextUtils.text(
                  text: 'Thai Duy Linh',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 4),
                TextUtils.text(text: 'linhmk2905@gmail.com'),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        TextUtils.text(text: AppWords.followers),
                        const SizedBox(height: 4),
                        TextUtils.text(
                          text: '129',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    const SizedBox(width: 120),
                    Column(
                      children: [
                        TextUtils.text(text: AppWords.following),
                        const SizedBox(height: 4),
                        TextUtils.text(
                          text: '238',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(AppPaths.icFindFriend),
                                const SizedBox(height: 4),
                                TextUtils.text(
                                  text: AppWords.findFriends,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            const SizedBox(width: 120),
                            Column(
                              children: [
                                SvgPicture.asset(AppPaths.icShare),
                                const SizedBox(height: 4),
                                TextUtils.text(
                                  text: AppWords.share,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        const SizedBox(height: 24),
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
                        const SizedBox(height: 24),
                        const MostPlayed(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
