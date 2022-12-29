import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas8/page/login_page.dart';

import 'package:tugas8/state_management.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (_) => PasswordProvider(),
          child: const LoginPage(),
        ));
  }
}
