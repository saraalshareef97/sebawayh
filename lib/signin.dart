import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/StartingPages/p1.dart';
import 'package:sebawayh/main.dart';

class AppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightGreen[800],
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical * 3.5,
                  SizeConfig.blockSizeVertical * 2, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Image(
                        height: SizeConfig.blockSizeVertical * 4,
                        width: SizeConfig.blockSizeHorizontal * 8,
                        image: AssetImage(
                          'images/loggo.png',
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.blockSizeVertical * 1.5),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => AppBar2()));
                              },
                            ),
                            Text('|',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4)),
                            FlatButton(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => MyApp()));
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 3,
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 7),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 1.5,
                  ),
                  Text('Sign in to continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 4.5))
                ],
              ),
            ),
          ),
          SignUpForm2()
        ],
      ),
    );
  }
}

class SignUpForm2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 24),
        height: MediaQuery.of(context).size.height,
        child: Container(
          margin: EdgeInsets.fromLTRB(
              SizeConfig.blockSizeHorizontal * 10,
              SizeConfig.blockSizeVertical * 6,
              SizeConfig.blockSizeHorizontal * 10,
              0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Email or username',
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
                ),
                TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      hintText: 'saraahmad241@gmail.com',
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 3.8),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.lightGreen[800]))),
                  validator: (v) {
                    if (v.isEmpty) {
                      return 'email is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 8,
                ),
                Text(
                  'Password',
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
                ),
                TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      hintText: '*******',
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 3.8),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.lightGreen[800]))),
                  validator: (v) {
                    if (v.isEmpty) {
                      return 'Password is reuired';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 5,
                ),
                Text(
                  'Forgot Password?',
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 6,
                ),
                Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreen[800],
                    child: MaterialButton(
                      height: SizeConfig.blockSizeVertical * 6,
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => P1()));
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.safeBlockHorizontal * 5),
                        textAlign: TextAlign.center,
                      ),
                    )),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2.5,
                ),
                Container(
                  alignment: Alignment.center,
                  height: SizeConfig.blockSizeVertical * 5,
                  child: Text(' - Or you can also - ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: SizeConfig.safeBlockHorizontal * 4.5)),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 3.2,
                ),
                Material(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue[900],
                    child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 6,
                        //minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Icon(
                                FontAwesomeIcons.facebookSquare,
                                size: SizeConfig.blockSizeVertical * 4.5,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal,
                            ),
                            Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                          ],
                        ))),
              ],
            ),
          ),
        ));
  }
}
