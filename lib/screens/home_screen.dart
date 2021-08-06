import 'dart:io';

import 'package:fashion_preview/widget/gridView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Back",
                style: TextStyle(color: Colors.redAccent),
              ),
              IconButton(
                  icon: Icon(
                    Icons.list,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: IconButton(
            icon: Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.redAccent,
                  size: 25,
                ),
              ],
            ),
            onPressed: () => exit(0),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Container(
                height: 125,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 13, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110.0,
                        height: 110.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.redAccent,
                                width: 2.0,
                                style: BorderStyle.solid),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/profile_pic.jpeg'))),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                              Text(
                                "Videos",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "155",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                              Text(
                                "followers",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "122",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                              Text(
                                "followings",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dhiraj Gupta",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Be Yourself,Everyone else is already taken.",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Text(
                      "dheerajgupta2800@gmail.com",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: width / 2.5,
                        height: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Follow",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    Container(
                        width: width / 2.5,
                        height: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Message",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: videoCard(),
              ),
            ],
          ),
        ),
      ),
    );

    //Widget videoCard(int index) => card()
  }
}
