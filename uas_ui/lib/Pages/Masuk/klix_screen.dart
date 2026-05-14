import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_ui/Pages/Masuk/sign_in.dart';
import 'package:uas_ui/Pages/Masuk/sign_up.dart';

class KlixScreen extends StatelessWidget {
  const KlixScreen({super.key});

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
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 3,
                ),
                const Text(
                  "KLINIX",
                  style: TextStyle(
                    color: Color(0xffC84C55),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    fontSize: 45,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Stet.jpeg',
                  ),
                  radius: 100,
                ),
                const Spacer(
                  flex: 2,
                ),
                Text(
                  "silahkan pilih login jika sudah\nmempunyai akun",
                  style: GoogleFonts.robotoMono(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignInPage();
                      }));
                    },
                    child: Text(
                      'SignIn',
                      style: GoogleFonts.istokWeb(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "atau silahkan pilih signup jika belum\nmempunyai akun",
                  style: GoogleFonts.robotoMono(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUpPage();
                      }));
                    },
                    child: Text(
                      'SignUp',
                      style: GoogleFonts.istokWeb(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
