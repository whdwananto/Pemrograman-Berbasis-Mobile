import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uas_ui/Pages/Masuk/sign_in.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black,
            Colors.blue.shade200,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: const Text(
            "PROFILE",
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                ClipOval(
                  child: SizedBox(
                    width: 230,
                    height: 230,
                    child: Image.asset('assets/images/profile.gif'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: dataprofile(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container dataprofile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffFCF3F3).withOpacity(0.08),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Wahyu Dwi Ananto",
            style: GoogleFonts.inder(
              fontSize: 27,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider(
            color: Colors.black54,
            thickness: 2,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "2010631170124@student.unsika.ac.id",
            style: GoogleFonts.inder(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider(
            color: Colors.black54,
            thickness: 2,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "089538952****",
            style: GoogleFonts.inder(
              fontSize: 27,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider(
            color: Colors.black54,
            thickness: 2,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffE92B2B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Konfirmasi"),
                      content: const Text("Ingin melanjutkan?"),
                      actions: [
                        TextButton(
                          child: const Text("Tidak"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: const Text("Iya"),
                          onPressed: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('isLoggedIn', false);
                            // ignore: use_build_context_synchronously
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return const SignInPage();
                              },
                            ));
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'LogOut',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
