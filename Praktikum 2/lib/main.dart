import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wahyu Dwi Ananto',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: "PRAKTIKUM_2"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sizeFont = 12.0;
  bool isVisible = false;

  void perbesar() {
    setState(() {
      sizeFont++;
    });
  }

  void perkecil() {
    setState(() {
      sizeFont--;
    });
  }

  void _isVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isVisible ? const Text('Wahyu Dwi Ananto') : const Text("WAHYU"),
            OutlinedButton(
                onPressed: _isVisible,
                child: const Text('tekan untuk mengubah nama')),
            Text(
              'TEXT',
              style: TextStyle(fontSize: sizeFont),
            ),
            OutlinedButton(
                onPressed: perbesar,
                child: const Text('tekan untuk memperbesar "TEXT"')),
            OutlinedButton(
                onPressed: perkecil,
                child: const Text('tekan untuk memperkecil "TEXT')),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _isVisible,
      // icon: const Icon(Icons.plus_one_rounded),
      // label: const Text('click here'),
      // ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   icon: const Icon(Icons.plus_one),
      //   label: const Text('click here'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
