import 'package:flutter/material.dart';

import 'Profile Page.dart';

class GymDescriptionPage extends StatefulWidget {
  @override
  _GymDescriptionPageState createState() => _GymDescriptionPageState();
}

class _GymDescriptionPageState extends State<GymDescriptionPage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5, 0.9],
            colors: [
              Color(0xff250f63),
              Color(0xff180d31),
              Color(0xff180d31),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: height/15, left: width/12),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context) => ProfilePage()));
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios,color: Colors.white),
                    Text("Back", style: TextStyle(fontSize: width/22,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Positioned(
              top: height/9,
              left: width/12,
              child: Container(
                height: height/18,
                width: width/1.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.5, 0.9],
                    colors: [
                      Color(0xe14b477f),
                      Color(0xe13b377f),
                      Color(0xe1333357),
                    ],
                  ),
                    
                  //color: Color(0xff1b0650),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search_rounded,color: Colors.white),
                    SizedBox(width: width/20,),
                    Text("Search",style: TextStyle(fontSize: width/24.5,color: Colors.white60)),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height/5.2,
              left: width/12,
              child: Container(
                width: width/1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("My Gyms", style: TextStyle(fontSize: width/14.5,color: Colors.white),),
                      Icon(Icons.menu_rounded,color:Color(0xff02a6c2))
                    ],
                  )
              ),
            ),
            // CardView Starts here
            Positioned(
              top: height/4,
              left: width/12,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(width/25),
                    height: height/5.3,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Anytime Fitness", style: TextStyle(fontSize: width/20,color: Colors.white)),
                            Text("₹250.00", style: TextStyle(fontSize: width/20,color:Color(0xff02a6c2),
                                fontWeight:FontWeight.w600 )),
                          ],
                        ),
                        SizedBox(height: height/60,),
                        Row(
                          children: <Widget>[
                            Text("Offer: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" One Day Plan", style: TextStyle(fontSize: width/28,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          children: <Widget>[
                            Text("Date: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" 24 Apr 2021", style: TextStyle(fontSize: width/28,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Download Receipt",style: TextStyle(fontSize: width/25,color:Color(0xff02a6c2))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Container(
                    padding: EdgeInsets.all(width/25),
                    height: height/5.3,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Anytime Fitness", style: TextStyle(fontSize: width/20,color: Colors.white)),
                            Text("₹250.00", style: TextStyle(fontSize: width/20,color:Color(0xff02a6c2),
                                fontWeight:FontWeight.w600 )),
                          ],
                        ),
                        SizedBox(height: height/60,),
                        Row(
                          children: <Widget>[
                            Text("Offer: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" One Day Plan", style: TextStyle(fontSize: width/28,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          children: <Widget>[
                            Text("Date: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" 24 Apr 2021", style: TextStyle(fontSize: width/28,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Download Receipt",style: TextStyle(fontSize: width/25,color:Color(0xff02a6c2))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Container(
                    padding: EdgeInsets.all(width/25),
                    height: height/5.3,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Anytime Fitness", style: TextStyle(fontSize: width/20,color: Colors.white)),
                            Text("₹250.00", style: TextStyle(fontSize: width/20,color:Color(0xff02a6c2),
                                fontWeight:FontWeight.w600 )),
                          ],
                        ),
                        SizedBox(height: height/60,),
                        Row(
                          children: <Widget>[
                            Text("Offer: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" One Day Plan", style: TextStyle(fontSize: width/28,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          children: <Widget>[
                            Text("Date: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" 24 Apr 2021", style: TextStyle(fontSize: width/28,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Download Receipt",style: TextStyle(fontSize: width/25,color:Color(0xff02a6c2))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context) => ProfilePage()));
                      },
                      child: CircleAvatar(
                        radius: width/38,
                        backgroundImage: AssetImage("assets/profilephoto.jpeg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
