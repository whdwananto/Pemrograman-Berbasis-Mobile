import 'package:flutter/material.dart';
import 'package:uas_ui/Pages/Dashboard/navbar_page/antrian.dart';
import 'package:uas_ui/Pages/Dashboard/navbar_page/dokter.dart';
import 'package:uas_ui/Pages/Dashboard/navbar_page/home.dart';
import 'package:uas_ui/Pages/Dashboard/navbar_page/info.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pageIndex = 0;

  final page = [
    const Home(),
    const Dokter(),
    const Antrian(),
    const Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[pageIndex],
      bottomNavigationBar: navbar(context),
    );
  }

  Container navbar(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xffD9D9D9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_outlined,
                    size: 40,
                    color: Color(0xff5244F3),
                  )
                : const Icon(
                    Icons.home_outlined,
                    size: 40,
                    color: Colors.black87,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.groups_outlined,
                    size: 40,
                    color: Color(0xff5244F3),
                  )
                : const Icon(
                    Icons.groups_outlined,
                    size: 40,
                    color: Colors.black87,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.calendar_month_outlined,
                    size: 40,
                    color: Color(0xff5244F3),
                  )
                : const Icon(
                    Icons.calendar_month_outlined,
                    size: 40,
                    color: Colors.black87,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.notifications_none_outlined,
                    size: 40,
                    color: Color(0xff5244F3),
                  )
                : const Icon(
                    Icons.notifications_none_outlined,
                    size: 40,
                    color: Colors.black87,
                  ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
