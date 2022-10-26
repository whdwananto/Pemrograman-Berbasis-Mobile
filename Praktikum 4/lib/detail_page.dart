import 'package:flutter/material.dart';
import 'package:praktikum_4/waterpark_model.dart';

class DetailPage extends StatelessWidget {
  final Waterpark waterpark;

  const DetailPage({
    super.key,
    required this.waterpark,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent[400],
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 16,
                      ),
                      label: const Text(
                        "BACK",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 20,
                        ),
                        const Text(
                          "Information",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  height: 40,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            waterpark.title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            waterpark.subtitel,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.star_outlined),
                      Text("${waterpark.rating}"),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.black,
                  child: SizedBox(
                    height: 245,
                    width: 390,
                    child: Image.asset(
                      waterpark.image,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 380,
                  height: 283,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 10,
                      ),
                      Text(
                        waterpark.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 120,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                            ),
                            Container(
                              width: 15,
                            ),
                            Expanded(
                              child: Text(
                                waterpark.address,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
