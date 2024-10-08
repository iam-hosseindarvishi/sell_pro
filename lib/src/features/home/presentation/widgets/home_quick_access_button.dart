import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeQuickAccessButton extends StatelessWidget {
  final String icon;
  final String title;
  String? subTitle;
  String? subText;
  Color borderColor;
  final Function handleTap;
  HomeQuickAccessButton(
      {super.key,
      this.icon = "",
      required this.title,
      required this.subTitle,
      this.borderColor = Colors.transparent,
      required this.handleTap,
      this.subText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.outer,
                color: Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                blurRadius: 2)
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border(right: BorderSide(color: borderColor, width: 5)),
        ),
        child: InkWell(
          onTap: () {
            handleTap();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(
                  image: AssetImage(icon),
                  height: MediaQuery.sizeOf(context).height * .08,
                  width: MediaQuery.sizeOf(context).width * .07,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: "IranSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    Text(
                      subTitle ?? "",
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: "IranSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(.8)),
                    ),
                    Text(
                      subText ?? "",
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: "IranSans",
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(.8)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
