import 'package:flutter/material.dart';

class HomeQuickAccessButton extends StatelessWidget {
  final String icon;
  final String title;
  String? subTitle;
  String? subText;
  Color borderColor;
  final handleTap;
  HomeQuickAccessButton(
      {super.key,
      this.icon = "",
      required this.title,
      required this.subTitle,
      this.borderColor = Colors.transparent,
      this.handleTap,
      this.subText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5, left: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.outer,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.5),
                blurRadius: 2)
          ],
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(5),
          border: Border(right: BorderSide(color: borderColor, width: 5)),
        ),
        child: InkWell(
          onTap: handleTap,
          overlayColor: MaterialStatePropertyAll<Color>(
              Theme.of(context).colorScheme.surface),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                image: AssetImage(icon),
                height: 36,
                width: 36,
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
                        color: Theme.of(context).colorScheme.onPrimary),
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
                            .onPrimary
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
                            .onPrimary
                            .withOpacity(.8)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
