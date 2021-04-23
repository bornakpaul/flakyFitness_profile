import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profile_flutter_app/painters/background_painter.dart';
import 'package:profile_flutter_app/screens/Profile%20Page.dart';

import 'LoginPage.dart';
import 'RegisterPage.dart';

class phoneLoginPage extends StatefulWidget {
  @override
  _phoneLoginPageState createState() => _phoneLoginPageState();
}

class _phoneLoginPageState extends State<phoneLoginPage> {

  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  Future<bool> loginUser( String phone, BuildContext context) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();
          AuthResult result = await _auth.signInWithCredential(credential);

          FirebaseUser user = result.user;

          if(user != null){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
          }else{
            print("Error");
          }
          //This callback would get called when verification is done automatically
        },
        verificationFailed: (AuthException exception){
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]){
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context){
                return AlertDialog(
                  title: Text("Type the code"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _codeController,
                      )
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                        child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.deepPurpleAccent,
                      onPressed: () async {
                          final code = _codeController.text.trim();
                          AuthCredential credential = PhoneAuthProvider.getCredential(
                              verificationId: verificationId,
                              smsCode: code
                          );
                          AuthResult result = await _auth.signInWithCredential(credential);

                          FirebaseUser user = result.user;
                          if(user != null ){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                          }else{
                            print("Error");
                          }
                      },
                    )
                  ],
                );
              }
          );
        },
        codeAutoRetrievalTimeout: null
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SizedBox.expand(
              child: CustomPaint(
                painter: BackgroundPainter(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 80.0, left: 20.0,right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Image(image: AssetImage('assets/logocircular.png'),height: 80.0,),
                  SizedBox(height: 20.0,),
                  Text("Welcome,", style: TextStyle(color: Colors.white,fontSize: 34),),
                  Text("Please enter your number to continue.", style: TextStyle(color: Colors.white,fontSize: 20),),
                  Container(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(color: Colors.white,fontSize: 18),
                          controller: _phoneController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone,color: Colors.white70),
                            labelText: "Phone Number",
                            labelStyle: TextStyle(fontSize: 20.0,color: Colors.white70),
                            filled: true,
                            fillColor: Colors.white30,
                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white70)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurpleAccent,
                    ),
                    child: FlatButton(
                      onPressed: (){
                        //code here for the button
                        final phone = _phoneController.text.trim();
                        loginUser(phone, context);
                      },
                      child: Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Want to login with mail? ",style: TextStyle(fontSize: 16,
                            color: Colors.white54),),
                        RichText(
                            text: TextSpan(
                                text: ' Login here',
                                style: TextStyle(fontSize: 16,color: Colors.white),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context){
                                          return LoginPage();
                                        }
                                    ));
                                  }
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
