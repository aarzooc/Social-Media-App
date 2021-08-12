import 'package:flutter/material.dart';
import 'package:hospichat/screens/forum/widgets/popular_topics.dart';
import 'package:hospichat/screens/forum/widgets/posts.dart';
import 'package:hospichat/screens/forum/widgets/top_bar.dart';

class HomeForumPage extends StatefulWidget {
  @override
  _HomeForumPageState createState() => _HomeForumPageState();
}

class _HomeForumPageState extends State<HomeForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF200B8B5),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xF200B8B5)
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sra, Forum",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height:8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Find topics you are interested in",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 14.0,
                          ),
                        ),
                        Icon(
                          Icons.manage_search,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TopBar(),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Popular Topics",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                  PopularTopics(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                    child: Text(
                      "Treding Posts",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Posts()
                ],
              )
            )
          ],
        )
      ),
    );
  }
}