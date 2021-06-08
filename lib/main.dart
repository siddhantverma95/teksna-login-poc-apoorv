import 'dart:ui';

import 'package:android_login_ui/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icon color
      systemNavigationBarIconBrightness:
          Brightness.dark, // color of navigation controls
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEKSNA',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              //Padding(padding: EdgeInsets.only(right:50)),
              Flexible(
                child: Image.asset(
                  "assets/teksna.jpeg",
                  height: 60.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 8, top: 15, bottom: 15),
              child: Image.asset(
                "assets/mall-bag.png",
                width: 60,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10, top: 15, bottom: 15),
              child: Image.asset(
                "assets/line.png",
                width: 30,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 240.0,
                  width: MediaQuery.of(context).size.width,
                ),
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset("assets/img.png", fit: BoxFit.cover),
              ),
            ),
            Positioned(
              child: (Container(
                //height: 360,
                //width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.only(top: 100, right: 20, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment(-0.93, 0),
                        child: SafeArea(
                          top: true,
                          left: true,
                          bottom: true,
                          right: true,
                          child: InkWell(
                            onTap: () {
                              //TODO
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Serif",
                                // fontStyle: ,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      _labelText('Email Address / Phone Number '),
                      _inputTextField('example@example.com', false),
                      SizedBox(height: 15),
                      _labelText('Enter Password'),
                      _inputTextField('********', true),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: SafeArea(
                          left: true,
                          right: true,
                          minimum: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 55,
                            width: 300,
                            child: new RaisedButton(
                              onPressed: () => {
                                //TODO
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              color: Colors.blue[500],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
            Column(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Spacer(flex: 24),
                      Divider(
                        color: Colors.blue,
                        height: 5,
                        endIndent: 30,
                        indent: 30,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Or sign-in with",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _loginSocialMediaBtn('assets/google-icon 1.png'),
                          SizedBox(width: 20),
                          _loginSocialMediaBtn('assets/Vector.png'),
                        ],
                      ),
                      SizedBox(height: 50),
                      SafeArea(
                        bottom: true,
                        minimum: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Don\'t have an account? Sign Up!',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue[500],
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //button to login in using scial media,
  _loginSocialMediaBtn(String img) {
    return SizedBox.fromSize(
      size: Size(40, 40),
      child: Container(
        decoration: new BoxDecoration(
          border:
              Border.all(width: 1, color: Colors.blue[400].withOpacity(0.2)),
          borderRadius: new BorderRadius.all(Radius.circular(5.0)),
          shape: BoxShape.rectangle,
        ), //button width and height
        child: ClipRRect(
          //borderRadius: BorderRadius.circular(5),
          child: Material(
            elevation: 16,
            shadowColor: Colors.white,
            color: Colors.white70,
            child: InkWell(
              splashColor: Colors.white,
              onTap: () {},
              child: Center(
                child: Image.asset(
                  img,
                  height: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _inputTextField(hintText, bool obscuretext) {
    return Container(
      height: 56,
      padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
      margin: EdgeInsets.all(8),
      decoration: raisedDecoration,
      child: Center(
        child: TextField(
          obscureText: obscuretext,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }

  _labelText(title) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey[500],
          fontSize: 12,
        ),
      ),
    );
  }
}
