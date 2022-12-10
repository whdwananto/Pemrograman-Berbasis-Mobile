import 'package:flutter/material.dart';
import 'package:prak_7/note_list_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HalMasuk extends StatefulWidget {
  const HalMasuk({super.key});

  @override
  State<HalMasuk> createState() => _HalMasukState();
}

class _HalMasukState extends State<HalMasuk> {
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
              builder: (context) => const NoteListPage(),
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
            builder: (context) => const NoteListPage(),
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
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.cyan,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Apakah anda yakin ingin menggunakan Aplikasi ini?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: _boolean,
                child: const Text(
                  "Setuju",
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
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
