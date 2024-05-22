import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text(
              "کاربر مهمان",
              style: TextStyle(fontFamily: "Sahel"),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            leading: Builder(
              builder: (context) {
                return IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu));
              },
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.email)),
            ],
          ),
          body: Container(),
        ),
      ),
    );
  }
}
