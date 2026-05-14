import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uas_ui/Pages/Dashboard/navbar.dart';
import 'package:uas_ui/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(Klinix(isLoggedIn: isLoggedIn));
}

class Klinix extends StatelessWidget {
  final bool isLoggedIn;

  const Klinix({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isLoggedIn ? const NavBar() : const SplashScreen(),
    );
  }
}
