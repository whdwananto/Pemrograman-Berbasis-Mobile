import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_ui/Models/model_doctor.dart';

class DetailDokter extends StatelessWidget {
  final DokterModel dokterModel;
  const DetailDokter({super.key, required this.dokterModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff0D2F3D),
            Color(0xff89D9FC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            dokterModel.name,
            style: GoogleFonts.inder(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          shape: const Border(
            bottom: BorderSide(
              color: Colors.white24,
              width: 1,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 15,
              left: 15,
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 5),
                      ),
                      width: 130,
                      height: 130,
                      child: Image.network(dokterModel.id),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Specialty",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 207, 220, 241),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dokterModel.specialty,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Education",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 207, 220, 241),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dokterModel.education,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Location",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 207, 220, 241),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dokterModel.location,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Experience",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 207, 220, 241),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dokterModel.experience,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Organizations",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 207, 220, 241),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dokterModel.organizations,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
