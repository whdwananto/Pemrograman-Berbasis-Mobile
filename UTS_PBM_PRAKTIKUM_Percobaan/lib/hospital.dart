import 'package:flutter/material.dart';
import 'package:praktikum_5/hospital_detail.dart';
import 'package:praktikum_5/hospital_model.dart';

class Hospital extends StatelessWidget {
  const Hospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/hospital.json'),
        builder: (context, snapshot) {
          List<HospitalModel> hospital = parse(snapshot.data);

          return ListView.builder(
            itemCount: hospital.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HospitalDetail(hospitalModel: hospital[index]),
                      ));
                },
                child: ListTile(
                  leading: Image.network(hospital[index].pictureId),
                  title: Text(hospital[index].name),
                  contentPadding: const EdgeInsets.all(8.0),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
