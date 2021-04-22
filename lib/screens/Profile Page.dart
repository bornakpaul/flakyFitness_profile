import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:profile_flutter_app/screens/GymDescriptionPage.dart';
import 'package:profile_flutter_app/screens/accountPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xff38354b),  //change the colour later
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: height/3.2,
              decoration: BoxDecoration(
                color: Color(0xe1524d9e),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: height/15, left: width/12),
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back_ios,color: Colors.white),
                  Text("Back", style: TextStyle(fontSize: width/22,color: Colors.white),)
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: width/34,
              child: Container(
                width: width/1.06,
                height: height/1.38,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.7, 0.9],
                    colors: [
                      Color(0xff250f63),
                      Color(0xff180d31),
                      Color(0xff180d31),
                    ],
                  ),
                  //color: Color(0xff1b0650),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Anoushka Halder", style: TextStyle(fontSize: 28,
                          color: Colors.white, fontWeight: FontWeight.w600
                      ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height: height/15,
                        width: width/1.3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.1, 0.5, 0.9],
                            colors: [
                              Color(0xe14b477f),
                              Color(0xe1524d9e),
                              Color(0xe1333357),
                            ],
                          ),
                          //color: Color(0xff1b0650),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("+91-9163637610",
                                style: TextStyle(fontSize: width/25,color: Colors.white),),
                              Text("anoushkahalder@gmail.com",
                                style: TextStyle(fontSize: width/25,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50,top: height/40),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder:(context) => GymDescriptionPage()));
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.sports_mma_rounded,color: Colors.white),
                                  SizedBox(width: 10.0,),
                                  Text("Your Gyms", style: TextStyle(fontSize: width/22,color: Colors.white),)
                                ],
                              ),
                            ),
                            SizedBox(height: height/40,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder:(context) => accountPage()));
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.person,color: Colors.white),
                                  SizedBox(width: 10.0,),
                                  Text("Account Settings", style: TextStyle(fontSize: width/22,color: Colors.white),)
                                ],
                              ),
                            ),
                            SizedBox(height: height/40,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.settings,color: Colors.white),
                                SizedBox(width: 10.0,),
                                Text("About", style: TextStyle(fontSize: width/22,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: height/40,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.support_agent_rounded,color: Colors.white),
                                SizedBox(width: 10.0,),
                                Text("Support", style: TextStyle(fontSize: width/22,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: height/40,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.logout,color: Colors.white),
                                SizedBox(width: 10.0,),
                                Text("LogOut", style: TextStyle(fontSize: width/22,color: Colors.white),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: height/5,
              left: width/3,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage("assets/profilephoto.jpeg"),
                ),
              ),
            ),
            Positioned(
              bottom: height/25,
              left: width/12,
              child: Container(
                height: height/15,
                width: width/1.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.5, 0.9],
                    colors: [
                      Color(0xe14b477f),
                      Color(0xe1524d9e),
                      Color(0xe1333357),
                    ],
                  ),
                  //color: Color(0xff1b0650),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.home ,color: Colors.white,),
                    Icon(Icons.qr_code_scanner,color: Colors.white),
                    Icon(Icons.favorite_outline,color: Colors.white),
                    CircleAvatar(
                      radius: width/38,
                      backgroundImage: AssetImage("assets/profilephoto.jpeg"),
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
