import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/main.dart';
import 'package:sebawayh/signin.dart';

class AppBar1 extends StatelessWidget {
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
                    'Hey, get on board',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 7),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 1.5,
                  ),
                  Text('Sign up8888 to continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 4.5))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 23),
        child: Container(
          margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 10, 0,
              SizeConfig.blockSizeHorizontal * 10, 0),
          child: Form(
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Email',
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
                    height: SizeConfig.blockSizeVertical * 3.2,
                  ),
                  Text(
                    'User Name',
                    style:
                        TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
                  ),
                  TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        hintText: 'saraalshareef',
                        hintStyle: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 3.8),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.lightGreen[800]))),
                    validator: (v) {
                      if (v.isEmpty) {
                        return 'username is reuired';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 3.2,
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
                    height: SizeConfig.blockSizeVertical * 3.2,
                  ),
                  Text(
                    'Retype Password',
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
                        return 'email is reuired';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Icon(
                          Icons.check_box,
                          size: 23,
                          color: Colors.lightGreen[800],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 3.2,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                              text: 'By signing up you agree to our ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: SizeConfig.safeBlockHorizontal * 3.8,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'conditions ',
                                    style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 3.8,
                                    )),
                                TextSpan(
                                    text: 'and ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 3.8,
                                    )),
                                TextSpan(
                                    text: 'privacy policy. ',
                                    style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 3.8,
                                    )),
                              ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3.3),
                  Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightGreen[800],
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 6,
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {},
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.safeBlockHorizontal * 5.2),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: SizeConfig.blockSizeVertical * 4.5,
                    child: Text(' - Or you can also - ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: SizeConfig.safeBlockHorizontal * 4)),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                  Material(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[900],
                      child: MaterialButton(
                          height: SizeConfig.blockSizeVertical * 7,
                          //minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeVertical * 3,
                              0,
                              SizeConfig.blockSizeVertical * 3,
                              0),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                FontAwesomeIcons.facebookSquare,
                                size: SizeConfig.blockSizeVertical * 4.5,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal,
                              ),
                              Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5.2),
                              ),
                            ],
                          ))),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        child: MaterialButton(
                            height: SizeConfig.blockSizeVertical * 7,
                            //minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(
                                SizeConfig.blockSizeVertical * 3,
                                0,
                                SizeConfig.blockSizeVertical * 3,
                                0),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FontAwesomeIcons.google,
                                  size: SizeConfig.blockSizeVertical * 4.5,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal,
                                ),
                                Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5.2),
                                ),
                              ],
                            ))),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(
                  //       bottom: SizeConfig.blockSizeHorizontal * 5),
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: Colors.grey,
                  //       ),
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  //   child: Material(
                  //       borderRadius: BorderRadius.circular(5),
                  //       //  color: Colors.grey,
                  //       child: MaterialButton(
                  //           height: SizeConfig.blockSizeVertical * 7,
                  //           //minWidth: MediaQuery.of(context).size.width,
                  //           padding: EdgeInsets.fromLTRB(
                  //               SizeConfig.blockSizeVertical * 3,
                  //               0,
                  //               SizeConfig.blockSizeVertical * 3,
                  //               0),
                  //           onPressed: () {},
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //             children: [
                  //               Padding(
                  //                  padding: EdgeInsets.fromLTRB(
                  //             SizeConfig.blockSizeVertical * 3,
                  //             0,
                  //             SizeConfig.blockSizeVertical * 3,
                  //             0),
                  //                 child: Icon(
                  //                   FontAwesomeIcons.google,
                  //                   size: SizeConfig.blockSizeVertical * 4.5,
                  //                   color: Colors.black,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 width: SizeConfig.blockSizeHorizontal,
                  //               ),
                  //               Text(
                  //                 'Continue with Google',
                  //                 style: TextStyle(
                  //                     color: Colors.black,
                  //                     fontSize:
                  //                         SizeConfig.safeBlockHorizontal * 5.2),
                  //               ),
                  //               SizedBox(
                  //                 height: SizeConfig.blockSizeVertical * 7,
                  //               ),
                  //             ],
                  //           ))),
                  // )
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 7,
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
