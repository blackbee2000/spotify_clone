import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/screens/base_widget.dart';
import 'package:spotify_clone/screens/home/widgets/banner.dart';
import 'package:spotify_clone/screens/home/widgets/menu_list.dart';
import 'package:spotify_clone/screens/home/widgets/today_hits.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/appbar.dart';
import 'package:spotify_clone/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with BaseWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarUtils.appBarCustom(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppPaths.icSearch),
        ),
        title: logoWidget(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppPaths.icSetting),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 16),
              BannerWidget(),
              SizedBox(height: 32),
              TodayHitsWidget(),
              SizedBox(height: 32),
              MenuListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
