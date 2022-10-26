import 'package:flutter/material.dart';
import 'package:praktikum_4/detail_page.dart';
import 'package:praktikum_4/waterpark_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "PRAKTIKUM 4",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ), //AppBar
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 5,
            ),
            const Text(
              "List Kolam Renang, sumber data Google Maps",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Text("Emulator : Pixel 2 API 32",
                style: TextStyle(
                  color: Colors.white,
                )),
            Container(
              height: 5,
            ),
            Container(
              height: 585,
              decoration: BoxDecoration(
                color: Colors.greenAccent[400],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listResto.length,
                  itemBuilder: (context, index) {
                    final item = listResto[index];
                    return Card(
                      elevation: 0,
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 44,
                            minWidth: 44,
                            maxHeight: 44,
                            maxWidth: 44,
                          ),
                          child: (Image.asset(
                            item.image,
                            fit: BoxFit.cover,
                          )),
                        ),
                        title: Text(
                          item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(item.subtitel),
                        tileColor: Colors.grey.shade400,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(waterpark: item),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
