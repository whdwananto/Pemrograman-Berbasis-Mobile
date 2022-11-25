import 'package:flutter/material.dart';
import 'package:latihan_6/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HalPertama(),
    );
  }
}

class HalPertama extends StatefulWidget {
  const HalPertama({super.key});

  @override
  State<HalPertama> createState() => _HalPertamaState();
}

class _HalPertamaState extends State<HalPertama> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  Future<void> _boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if (_isBool == true) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Profile(),
            ));
        print("Berhasil");
      } else {
        print("Gagal");
      }
    });
    prefs.setBool('bool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    _isBool = prefs.getBool('bool') ?? _isBool;
    if (_isBool == true) {
      if (!mounted) return;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Profile(),
          ));
      print("Berhasil");
    } else {
      print("Gagal");
    }
  }

  @override
  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _boolean,
                child: const Text(
                  "Click Me",
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
