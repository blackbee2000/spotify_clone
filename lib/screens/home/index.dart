import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/screens/base_widget.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/widgets/appbar.dart';

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
    );
  }
}
