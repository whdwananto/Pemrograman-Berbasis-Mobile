import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_ui/Pages/Account/profilepage.dart';
import 'package:uas_ui/Pages/Dashboard/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          shape: const Border(
            bottom: BorderSide(
              color: Colors.white24,
              width: 1,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Text(""),
          centerTitle: true,
          title: const Text(
            'KLINIX',
            style: TextStyle(
              color: Color(0xffC84C55),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ProfilePage();
                  },
                ));
              },
              icon: Ink.image(
                image: const AssetImage('assets/images/profile.gif'),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const NavBar();
                            },
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        height: 126,
                        width: 135,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset(
                                'assets/images/dokter.png',
                              ),
                            ),
                            Text(
                              'Dokter',
                              style: GoogleFonts.inder(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 126,
                      width: 135,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 90,
                            child: Image.asset(
                              'assets/images/antrian.png',
                            ),
                          ),
                          Text(
                            'Antrian',
                            style: GoogleFonts.inder(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 126,
                  width: 135,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Image.asset(
                          'assets/images/inklinik.png',
                        ),
                      ),
                      Text(
                        'Info Klinik',
                        style: GoogleFonts.inder(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: dokterhadir(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container dokterhadir(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffFCF3F3).withOpacity(0.08),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Dokter Tersedia',
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
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
                        style: GoogleFonts.inder(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Family Medicine',
                        style: GoogleFonts.inder(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
              thickness: 2,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
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
                        'Dr. Jane Robinson',
                        style: GoogleFonts.inder(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Internal Medicine',
                        style: GoogleFonts.inder(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
              thickness: 2,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
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
                        'Dr. Michael Evans',
                        style: GoogleFonts.inder(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Neurology',
                        style: GoogleFonts.inder(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
