import 'package:flutter/material.dart';
import 'package:praktikum_uts_pbm/signinpage.dart';
import 'package:praktikum_uts_pbm/signuppage.dart';

class PageUtama extends StatelessWidget {
  const PageUtama({super.key});

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
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 3,
                ),
                Text(
                  "Sport News",
                  style: TextStyle(
                    color: Colors.redAccent[400],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    fontSize: 45,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(100),
                    child: Image.asset(
                      'assets/logo.jpg',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  "silahkan pilih login jika sudah\nmempunyai akun",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
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
                        return const LoginPage();
                      }));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "atau silahkan pilih signup jika belum\nmempunyai akun",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
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
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
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
