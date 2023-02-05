import 'package:assigment/models/data.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabPopular extends StatelessWidget {
  const TabPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Text(
            "Most Read",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: listOfNews.length,
              itemBuilder: (_, int index) {
                return Card(
                  color: Colors.white,
                  elevation: 3,
                  child: Container(
                    //padding: EdgeInsets.all(8),
                    // margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              listOfNews[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                listOfNews[index].title,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
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
