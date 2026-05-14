import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_uts_pbm/signinpage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black,
            Colors.blue.shade200,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: const Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                ClipOval(
                  child: Container(
                    width: 230,
                    height: 230,
                    color: Colors.black,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 200,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'your username',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    enabled: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'your email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    enabled: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'your password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    enabled: false,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    onPressed: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.confirm,
                        backgroundColor: Colors.black,
                        confirmBtnColor: Colors.black,
                        cancelBtnTextStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        onConfirmBtnTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const LoginPage();
                            },
                          ));
                        },
                      );
                    },
                    child: Row(
                      children: const [
                        Spacer(),
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
