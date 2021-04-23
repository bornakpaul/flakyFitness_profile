import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profile_flutter_app/painters/background_painter.dart';
import 'package:profile_flutter_app/screens/Profile%20Page.dart';
import 'package:profile_flutter_app/screens/phoneLoginPage.dart';

import 'RegisterPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  bool _isHidden = true;
  Future<FirebaseUser> _login(String email, String password) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    try{
      AuthResult result = await  _auth.signInWithEmailAndPassword(email: email, password: password);

      FirebaseUser user = result.user;

      return user;
    }catch(e){
      print(e);
      return null;
    }
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
                  Text("Please Login to continue.", style: TextStyle(color: Colors.white,fontSize: 22),),
                  Container(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(color: Colors.white,fontSize: 18),
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline_rounded,color: Colors.white70),
                            labelText: "E-mail Id",
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
                        SizedBox(height: 20.0,),
                        TextFormField(
                          style: TextStyle(color: Colors.white,fontSize: 18),
                          controller: _passwordController,
                          decoration: InputDecoration(
                            //border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock_rounded,color: Colors.white70),
                            labelText: "Password",
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
                            suffix: InkWell(
                                onTap: _tooglePasswordView,
                                child: Icon(_isHidden ? Icons.visibility_off_rounded  : Icons.visibility ,
                                    color: Colors.white70,
                                size: 18,)
                            ),
                          ),
                          obscureText: _isHidden,
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
                      color: Colors.deepPurpleAccent
                    ),
                    child: FlatButton(
                      onPressed: ()async{
                        // code here for the button
                        final email = _emailController.text.toString().trim();
                        final password = _passwordController.text.toString().trim();

                        FirebaseUser user = await _login(email, password);

                        if(user != null){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return ProfilePage();
                          }));
                        }else{
                          print("error");
                        }
                      },
                      child:Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account? ",style: TextStyle(fontSize: 16,
                            color: Colors.white54),),
                        RichText(
                            text: TextSpan(
                                text: ' Register now',
                                style: TextStyle(fontSize: 16,color: Colors.white),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context){
                                          return RegisterPage();
                                        }
                                    ));
                                  }
                            )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurpleAccent
                    ),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> phoneLoginPage()));
                    },
                      child: Text("OTP LOGIN",style: TextStyle(fontSize: 20,color: Colors.white),),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _tooglePasswordView(){
    setState(() {
      _isHidden =! _isHidden;
    });
  }
}
