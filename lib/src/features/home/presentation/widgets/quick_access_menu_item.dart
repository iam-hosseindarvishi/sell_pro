import 'package:flutter/material.dart';

class QuickAccessMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  String? subText;
  final Color borderColor;
  QuickAccessMenuItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.borderColor,
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
                blurStyle: BlurStyle.solid,
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(.3),
                blurRadius: 1)
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5),
          border: Border(right: BorderSide(color: borderColor, width: 5)),
        ),
        child: InkWell(
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
                        fontFamily: "Sahel",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Text(
                    subTitle,
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                        fontFamily: "Sahel",
                        fontWeight: FontWeight.w700,
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
                        fontFamily: "Sahel",
                        fontWeight: FontWeight.w500,
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
