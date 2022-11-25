import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ClipOval(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.green,
                  child: const Icon(
                    Icons.person,
                    size: 150,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'WAHYU DWI ANANTO',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2010631170124',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
