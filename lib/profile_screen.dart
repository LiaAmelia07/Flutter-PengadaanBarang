import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'PROFILE',
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 239, 239),
                Color.fromARGB(255, 231, 229, 229)
              ]),
              borderRadius: BorderRadius.circular(5)),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(0),
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/wallpaper.jpg"),
                                fit: BoxFit.cover)),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          child: Container(
                            alignment: Alignment(0.0, 2.5),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img/logo.png'),
                              radius: 70.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Lia Amelia",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bandung, Indonesia",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "SMK Assalaam Bandung",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.instagram_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 170, 23, 255),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.whatsapp_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 21, 255, 0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.twitter_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 0, 225, 255),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.facebook_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 3, 13, 158),
                            ),
                          )
                        ],
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Instagram",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "itsmeliaam_",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "WhatsApp",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "08xxx",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Twitter",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "Nama Twitter Kamu",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Facebook",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "Parah Pake U",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
