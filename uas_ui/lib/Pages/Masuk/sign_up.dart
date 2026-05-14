import 'package:flutter/material.dart';
import 'package:uas_ui/Pages/Masuk/sign_in.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              Navigator.pop(context, true);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 30,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                      color: Colors.redAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nama',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'No HP',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Konfirmasi Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignInPage();
                        }));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'sudah punya akun?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignInPage();
                          }));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
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
