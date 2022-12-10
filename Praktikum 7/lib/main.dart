import 'package:flutter/material.dart';
import 'package:prak_7/db_provider.dart';
import 'package:prak_7/masuk.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DbProvider(),
      child: const MaterialApp(
        home: HalMasuk(),
      ),
    );
  }
}
