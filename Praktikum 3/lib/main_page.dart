import 'package:flutter/material.dart';
import 'package:praktikum_3/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            const Text(
              "SPACES",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 215),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.dashboard_rounded,
                color: Colors.black87,
              ),
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
            padding: const EdgeInsets.all(7.0),
            // color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 15,
                ),
                const Text(
                  "URBANISTIC",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: const Text(
                    "DEVELOPMENT",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                ),
                const Text(
                  "INSTITUTE",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                  ),
                ),
                Image.asset(
                  'images/bak.jpg',
                  width: 380,
                ),
                Container(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lecture:",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        const Text(
                          "FIRST REFLEXIVITY\nREVISITED",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 120),
                    ),
                    Ink(
                      decoration: ShapeDecoration(
                        color: Colors.teal.shade800,
                        shape: const Border(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const SecondPage();
                          }));
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        iconSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
