import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabVideos extends StatelessWidget {
  const TabVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "images/bbcnewsicon.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.play_arrow, size: 30),
                          Text("01:50"),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            //height: 60,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Suspect arrested over 4 july mass Shooting.",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) {
                return Card(
                  color: Colors.white,
                  elevation: 3,
                  child: Container(
                    //padding: EdgeInsets.all(8),
                    //margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: SizedBox(
                                height: 100,
                                width: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'images/bbcnewsicon.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.play_arrow),
                                      Text("02:00"),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "US Police have arrasted a "
                                "suspected after six people where killed a mass "
                                "shooting at independence Day "
                                "parade in Highland Park . ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Text(
                                    "30 minis ago",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: Colors.black87,
                                      thickness: 2,
                                    ),
                                  ),
                                  Text(
                                    "US & Canada",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
