import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabMyNews extends StatelessWidget {
  const TabMyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFFBB1919),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 30,
                      color: Color(0xFFBB1919),
                    ),
                    onPressed: () {
                      print("IconButton");
                    }),
              ),
              SizedBox(width: 15),
              Expanded(
                child: RichText(
                  text: TextSpan(
                      text: "Add Topics",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                      children: [
                        TextSpan(
                          text: " to create your own personal news feed",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "All the latest stories from from your topics will appear here",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {},
              child: Text(
                "OK, let\'s get started",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
