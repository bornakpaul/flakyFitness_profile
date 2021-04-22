import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profile_flutter_app/painters/background_painter.dart';

import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isHidden = true;

  Future<bool> registerUser(String name, String email, String phone, String password)async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;

      UserUpdateInfo info = UserUpdateInfo();
      info.displayName = name;
      info.photoUrl = email;
      user.updateProfile(info);

      return true;
    }catch(e){
      print(e);
      return false;
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
                  SizedBox(height: 20.0,),
                  Text("Welcome,", style: TextStyle(color: Colors.white,fontSize: 34),),
                  Text("Please Register to continue.", style: TextStyle(color: Colors.white,fontSize: 22),),
                  Container(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(color: Colors.white,fontSize: 18),
                          controller: _nameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person,color: Colors.white70),
                            labelText: "Full Name",
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
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone,color: Colors.white70),
                            labelText: "Phone",
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
                      onPressed: () async {
                        // code here for the button
                        final name = _nameController.text.toString().trim();
                        final email = _emailController.text.toString().trim();
                        final phone = _phoneController.text.toString().trim();
                        final password = _passwordController.text.toString().trim();

                        bool result = await registerUser(name, email, phone, password);
                        if(result){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()));
                        }else{
                          print("Error");
                        }
                      },
                      child:Text("REGISTER",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account? ",style: TextStyle(fontSize: 16,
                            color: Colors.white54),),
                        RichText(
                            text: TextSpan(
                                text: ' Login now',
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
  void _tooglePasswordView(){
    setState(() {
      _isHidden =! _isHidden;
    });
  }
}
