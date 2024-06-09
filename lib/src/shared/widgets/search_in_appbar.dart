import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sell_pro/src/configs/theme/dark%20theme/dark_theme_colors.dart';

class SearchInAppbar extends StatefulWidget {
  final String hintText;
  final Function handleOnSubmitted;
  final List<Widget> actions;
  SearchInAppbar(
      {Key? key,
      required this.hintText,
      required this.handleOnSubmitted,
      required this.actions})
      : super(key: key);

  @override
  _SearchInAppbarState createState() => _SearchInAppbarState();
}

class _SearchInAppbarState extends State<SearchInAppbar> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, right: 5, top: 5),
      padding: const EdgeInsets.only(right: 15),
      width: MediaQuery.sizeOf(context).width - 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border(
              left: BorderSide.none,
              bottom:
                  BorderSide(width: 1, color: DarkThemeColors.onSurfaceColor),
              right:
                  BorderSide(width: 1, color: DarkThemeColors.onSurfaceColor),
              top:
                  BorderSide(width: 1, color: DarkThemeColors.onSurfaceColor))),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                    color: DarkThemeColors.onSurfaceColor,
                    fontFamily: "IranSans"),
                border: InputBorder.none,
              ),
              style: TextStyle(
                  color: DarkThemeColors.onSurfaceColor,
                  fontFamily: "IranSans"),
              keyboardType: TextInputType.name,
              onChanged: (value) {
                setState(() {});
              },
              onSubmitted: (value) => widget.handleOnSubmitted,
            ),
          ),
          _controller.text == ""
              ? Row(children: widget.actions)
              : IconButton(
                  onPressed: () {
                    setState(() {
                      _controller.text = "";
                    });
                  },
                  icon: Icon(Icons.clear)),
        ],
      ),
    );
  }
}
