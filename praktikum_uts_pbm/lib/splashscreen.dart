import 'dart:async';

import 'package:flutter/material.dart';
import 'package:praktikum_uts_pbm/page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 7),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const PageUtama(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black87,
            Colors.white70,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(75),
                  child: Image.asset(
                    'assets/logo.jpg',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'SPORT',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
