import 'package:flutter/material.dart';
import 'package:praktikum_uts_pbm/profilepage.dart';
import 'package:praktikum_uts_pbm/sports_detail.dart';
import 'package:praktikum_uts_pbm/sports_model.dart';

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            const Text(
              "Sports News",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProfilePage();
                  }));
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                )),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString('assets/sports.json'),
        builder: (context, snapshot) {
          List<SportsModel> sports = parse(snapshot.data);
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: sports.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SportsDetail(sportsModel: sports[index]),
                      ));
                },
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              sports[index].pictureId,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          sports[index].title,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "${sports[index].genre} . ",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              sports[index].time,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
