import 'package:flutter/material.dart';
import 'package:praktikum_5/hospital_model.dart';

class HospitalDetail extends StatelessWidget {
  final HospitalModel hospitalModel;

  const HospitalDetail({super.key, required this.hospitalModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(hospitalModel.pictureId),
            const SizedBox(
              height: 24,
            ),
            Text(
              hospitalModel.name,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              hospitalModel.description,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            Text("${hospitalModel.rating}"),
            Text(hospitalModel.room.executive[1].name),

            // Text("${hospitalModel.room.executive[0]}"),
          ],
        ),
      ),
    );
  }
}
