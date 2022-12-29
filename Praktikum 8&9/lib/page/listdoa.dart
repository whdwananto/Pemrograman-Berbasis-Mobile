// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tugas8/page/detaildoa.dart';

import 'package:tugas8/services.dart';

class ListDoaAPi extends StatelessWidget {
  ListDoaAPi({super.key});
  DoaApiServices services = DoaApiServices();
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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "List Doa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.1,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: FutureBuilder(
                    future: services.fetchDoaApi(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final doa = snapshot.data![index];
                            return Card(
                              child: ListTile(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailDoa(Doa: doa))),
                                leading: CircleAvatar(
                                    backgroundColor: Colors.greenAccent,
                                    child: Text(snapshot.data![index].id)),
                                title: Text(
                                  snapshot.data![index].doa,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
