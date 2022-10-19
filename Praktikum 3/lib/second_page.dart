import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:praktikum_3/main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  iconSize: 35,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MainPage();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.black54,
                  ),
                ),
                Container(
                  width: 217,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.location_on_rounded,
                    color: Colors.black,
                  ),
                  label: const Text(
                    "Bekasi",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.brown.shade100,
      ),
      backgroundColor: Colors.brown.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.only(
              right: 5,
              left: 5,
            ),
            // color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      "Our activity",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 37),
                    ),
                    Container(
                      width: 123,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 2,
                      ),
                      color: Colors.teal.shade800,
                      width: 230,
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "History",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.teal.shade100),
                              ),
                              Container(
                                width: 95,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const SecondPage();
                                  }));
                                },
                                icon: const Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.white,
                                ),
                                iconSize: 40.0,
                              ),
                            ],
                          ),
                          Container(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                color: Colors.black45,
                                width: 75,
                                height: 75,
                                child: Icon(
                                  Icons.wallpaper,
                                  color: Colors.teal.shade50,
                                  size: 45,
                                ),
                              ),
                              Container(
                                width: 10,
                              ),
                              const Text(
                                "URBAN\nRENEWAL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 19,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 12,
                          ),
                          const Text(
                            "New information about\ncouncil's housing\naffordability strategy",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 18,
                    ),
                    Container(
                      color: Colors.black12,
                      width: 127.4,
                      height: 240,
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Find Your Class",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 37,
                          color: Colors.black),
                    ),
                    Container(
                      width: 60,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.view_headline_rounded,
                        color: Colors.black54,
                      ),
                      iconSize: 40.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        color: Colors.black,
        activeColor: Colors.teal.shade800,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            onPressed: () {},
          ),
          const GButton(
            icon: Icons.mail_outline_rounded,
            text: 'Mail',
          ),
          const GButton(
            icon: Icons.analytics_sharp,
            text: 'Stats',
          ),
          const GButton(
            icon: Icons.favorite_border,
            text: 'Favorite',
          ),
        ],
      ),
    );
  }
}
