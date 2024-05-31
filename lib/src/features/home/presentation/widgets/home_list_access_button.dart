import 'package:flutter/material.dart';

class HomeListAccessButton extends StatelessWidget {
  final Function handleTab;
  Color borderColor;
  final String title;
  double mt;
  final String subTitle;
  HomeListAccessButton({
    super.key,
    required this.handleTab,
    this.borderColor = Colors.transparent,
    required this.title,
    required this.subTitle,
    this.mt = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleTab(),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: 5, left: 5, bottom: 10, top: mt),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: "IranSans",
                  color: Theme.of(context).colorScheme.onBackground),
            ),
            Text(
              subTitle,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: "IranSans",
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(.8)),
            )
          ],
        ),
      ),
    );
  }
}
