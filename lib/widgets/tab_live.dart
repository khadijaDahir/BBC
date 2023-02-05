import 'package:flutter/material.dart';

class TabLive extends StatelessWidget {
  const TabLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Stack(children: [
            Image.asset(
              "images/news.jpg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Icon(
                Icons.play_arrow_rounded,
                size: 60,
                color: Color(0xFFFFFFFF),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            "BBC World Service",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BBC World Service",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              Text("2 May 2015",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  )),
              SizedBox(height: 15),
              Text(
                "International news analysis and features form the BBC World Services"
                "-bringing you expertise and insights from our global "
                "network of correspondents.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Align(
          //alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Copyright © 2015 BBC",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
