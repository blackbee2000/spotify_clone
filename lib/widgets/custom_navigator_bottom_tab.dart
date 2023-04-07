import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/widgets/text.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem(
      {required this.iconData,
      required this.iconDataActive,
      required this.text});
  String iconData;
  String iconDataActive;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    Key? key,
    required this.items,
    required this.centerItemText,
    required this.height,
    required this.backgroundColor,
    required this.notchedShape,
    required this.currentIndex,
    required this.onTabSelected,
  }) : super(key: key) {
    assert(items.length == 2 || items.length == 4);
  }
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final Color backgroundColor;
  final NotchedShape notchedShape;
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: (int index) {
          widget.onTabSelected(index);
        },
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      color: widget.backgroundColor,
      notchMargin: 6,
      elevation: 10,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(child: SizedBox(height: widget.height));
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () => onPressed(index),
          borderRadius: index == 1
              ? const BorderRadius.only(topRight: Radius.circular(8))
              : index == 2
                  ? const BorderRadius.only(topLeft: Radius.circular(8))
                  : BorderRadius.circular(0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(widget.currentIndex == index
                      ? item.iconDataActive
                      : item.iconData),
                ),
                const SizedBox(height: 5),
                TextUtils.text(
                  text: item.text,
                  fontSize: 12,
                  color: widget.currentIndex == index
                      ? AppColors.color1ED760
                      : Colors.white.withOpacity(0.6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
