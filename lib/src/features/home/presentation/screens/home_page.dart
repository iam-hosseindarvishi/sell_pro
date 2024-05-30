import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Placeholder(
                color: Theme.of(context).colorScheme.secondary,
                // ارتفاع ویجت نمایش امار = 30 درصد از ارتفاع صفحه
                fallbackHeight: MediaQuery.sizeOf(context).height * 0.3,
              ),
              const Divider(),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.preview),
                  label: Text(
                    "خلاصه امروز",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  )),
              const SizedBox(
                height: 20,
              ),
              Text("منو دسترسی سریع",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.surface,
                      )),
              const SizedBox(
                height: 15,
              ),
              // quick access menu
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickAccessMenuItem(
                    borderColor: Colors.blue,
                    icon: Icons.store,
                    subTitle: "فروش داشتید؟",
                    subText: "از این بخش ثبت کنید",
                    title: "فروش",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.red,
                    icon: Icons.shopping_cart,
                    subTitle: "خرید داشتید؟",
                    title: "خرید",
                    subText: "از این بخش ثبت کنید",
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class QuickAccessMenuItem extends StatelessWidget {
  final IconData icon;
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
    return InkWell(
      child: Container(
        width: MediaQuery.sizeOf(context).width * .4,
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(5),
          border: Border(right: BorderSide(color: borderColor, width: 5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/icons/sell.png",
              width: 24,
              height: 24,
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
                      color: Theme.of(context).colorScheme.onInverseSurface),
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
                          .onInverseSurface
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
                          .onInverseSurface
                          .withOpacity(.8)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
