import 'package:flutter/material.dart';
import 'package:profile_flutter_app/screens/Profile%20Page.dart';

class accountPage extends StatefulWidget {
  @override
  _accountPageState createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
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
              top: height/8,
              left: width/12,
              child: Container(
                child: Text("Your Account", style: TextStyle(fontSize: width/14.5,color: Colors.white),)
              ),
            ),
            // CardView Starts here
            Positioned(
              top: height/5.2,
              left: width/12,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(width/25),
                    height: height/5,
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
                            Text("Account Information", style: TextStyle(fontSize: width/20,color: Colors.white)),
                            Icon(Icons.navigate_next,color: Colors.white)
                          ],
                        ),
                        SizedBox(height: height/60,),
                        Row(
                          children: <Widget>[
                            Text("Name: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" Anoushka Halder", style: TextStyle(fontSize: width/24,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          children: <Widget>[
                            Text("Email: ", style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" anoushkahalder@gmail.com", style: TextStyle(fontSize: width/24,color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: height/90,),
                        Row(
                          children: <Widget>[
                            Text("Phone: ",style: TextStyle(fontSize: width/25,color: Colors.white60)),
                            Text(" +91-9163761985", style: TextStyle(fontSize: width/24,color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height/50,),
                  Container(
                    padding: EdgeInsets.all(width/25),
                    height: height/5,
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
                          Text("Payment Methods", style: TextStyle(fontSize: width/20,color: Colors.white)),
                          Icon(Icons.navigate_next,color: Colors.white)
                        ],
                      ),
                      SizedBox(height: height/35,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Image(image: AssetImage("assets/upi.png"),height: height/30,),
                              SizedBox(height: height/80,),
                              Text("UPI", style: TextStyle(fontSize: width/28,color: Colors.white))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image(image: AssetImage("assets/card.png"),height: height/30),
                              SizedBox(height: height/80,),
                              Text("Cards", style: TextStyle(fontSize: width/28,color: Colors.white))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image(image: AssetImage("assets/netbanking.png"),height:height/30),
                              SizedBox(height: height/80,),
                              Text("NetBanking", style: TextStyle(fontSize: width/28,color: Colors.white))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image(image: AssetImage("assets/cash.png"),height: height/30),
                              SizedBox(height: height/80,),
                              Text("Cash", style: TextStyle(fontSize: width/28,color: Colors.white))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  ),
                  SizedBox(height: height/50,),
                  Container(
                    padding: EdgeInsets.all(width/25),
                    height: height/5,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Account Security", style: TextStyle(fontSize: width/20,color: Colors.white)),
                            Icon(Icons.navigate_next,color: Colors.white)
                          ],
                        ),
                        SizedBox(height: height/60,),
                        Text("Change Password", style: TextStyle(fontSize: width/24,color: Colors.white)),
                        SizedBox(height: height/90,),
                        Text("Check Linked Accounts", style: TextStyle(fontSize: width/24,color: Colors.white)),
                        SizedBox(height: height/90,),
                        Text("Delete Account", style: TextStyle(fontSize: width/24,color: Colors.red)),
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
