import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas8/page/listdoa.dart';

import 'package:tugas8/state_management.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.greenAccent,
            Colors.blue.shade200,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Image.asset('assets/logo.png'),
                  ),
                  Container(
                    color: Colors.yellow.shade500,
                    margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          labelText: 'Email',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Icon(Icons.mail),
                          )),
                    ),
                  ),
                  Container(
                    color: Colors.yellow.shade500,
                    margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          suffixIcon: IconButton(
                              onPressed: () => context
                                  .read<PasswordProvider>()
                                  .passwordview(),
                              icon: const Icon(Icons.remove_red_eye)),
                          labelText: 'Password',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Icon(Icons.lock),
                          )),
                      obscureText: context.watch<PasswordProvider>().viewpw,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ListDoaAPi();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 50),
                        elevation: 0,
                        backgroundColor:
                            const Color.fromARGB(255, 202, 235, 255),
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Color.fromARGB(126, 29, 28, 28),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Belum Punya akun ?',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
