import 'package:flutter/material.dart';
import 'package:praktikum_3/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 3'),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.brown.shade100,
      body: Center(
        child: SizedBox(
          // color: Colors.brown.shade100,
          width: 350,
          child: Column(
            children: [
              Container(
                height: 100,
              ),
              Image.asset(
                'images/UI.jpg',
              ),
              Container(
                height: 5,
              ),
              const Text(
                "Emulator : Pixel 2 API 32\nWAHYU DWI ANANTO\n2010631170124",
                textAlign: TextAlign.center,
              ),
              Container(
                height: 5,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Hasil Tugas"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const MainPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
