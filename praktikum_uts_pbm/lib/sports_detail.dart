import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum_uts_pbm/sports_model.dart';

class SportsDetail extends StatelessWidget {
  final SportsModel sportsModel;
  const SportsDetail({super.key, required this.sportsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Row(
            children: <Widget>[
              const Text(
                "Read ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const Text(
                "Sports News",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 30,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.network(sportsModel.pictureId),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    sportsModel.title,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "By ${sportsModel.publisher} | ",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.5,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        sportsModel.time,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    sportsModel.subtitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    sportsModel.news,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.newsreader(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
