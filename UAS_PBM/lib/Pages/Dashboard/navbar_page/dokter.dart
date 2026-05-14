import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_ui/Pages/Dashboard/navbar_page/dokter_detail.dart';
import 'package:uas_ui/Models/model_doctor.dart';

class Dokter extends StatelessWidget {
  const Dokter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff0D2F3D),
            Color.fromARGB(255, 83, 152, 182),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: null,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Daftar Dokter',
            style: GoogleFonts.inter(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: FutureBuilder<String>(
          future:
              DefaultAssetBundle.of(context).loadString('assets/dokter.json'),
          builder: (context, snapshot) {
            List<DokterModel> dokters = parse(snapshot.data);
            return ListView.builder(
              itemCount: dokters.length,
              itemBuilder: (context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailDokter(dokterModel: dokters[index]);
                      },
                    ));
                  },
                  child: Card(
                    margin: const EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    elevation: 0,
                    shape: const Border(
                      top: BorderSide(
                        color: Colors.black87,
                        width: 1,
                      ),
                    ),
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Image.network(dokters[index].id),
                      title: Text(
                        dokters[index].name,
                        style: GoogleFonts.inder(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        dokters[index].specialty,
                        style: GoogleFonts.inder(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
