import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Antrian extends StatelessWidget {
  const Antrian({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff0D2F3D),
            Color.fromARGB(255, 83, 152, 182),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: null,
          centerTitle: true,
          title: Text(
            'Antrian Pasien',
            style: GoogleFonts.inter(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff9599AF).withOpacity(0.65),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 141,
                  width: 236,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Antrian Saat ini',
                        style: GoogleFonts.jacquesFrancois(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            '45/76',
                            style: GoogleFonts.jacquesFrancois(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Nomor Anda',
                        style: GoogleFonts.jacquesFrancois(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            '56',
                            style: GoogleFonts.jacquesFrancois(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff464B64).withOpacity(0.65),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 358,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pasien',
                        style: GoogleFonts.jacquesFrancois(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Wahyu Dwi Ananto',
                            style: GoogleFonts.jacquesFrancois(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Keterangan',
                        style: GoogleFonts.jacquesFrancois(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            ClipOval(
                              child: Image.network(
                                'https://th.bing.com/th/id/OIP.zAyKXsgCp_31mPX81tS1rAHaHv?w=183&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. George Anderson',
                                  style: GoogleFonts.jacquesFrancois(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Family Medicine',
                                  style: GoogleFonts.jacquesFrancois(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Keterangan',
                        style: GoogleFonts.jacquesFrancois(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Tidak Ada',
                            style: GoogleFonts.jacquesFrancois(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Silahkan Menunggu Antrian Anda',
                        style: GoogleFonts.jacquesFrancois(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
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
