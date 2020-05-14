import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/Arabic_words.dart';
import 'package:sebawayh/Level_1_Test.dart';
import 'package:sebawayh/arabic_alphabet_home.dart';
import 'package:sebawayh/main.dart';

class StartingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, SizeConfig.blockSizeVertical,
                      SizeConfig.blockSizeHorizontal * 3, 0),
                  child: Image(
                    width: SizeConfig.blockSizeHorizontal * 10,
                    image: AssetImage('images/medal.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal * 1.5),
                Container(
                  margin: EdgeInsets.fromLTRB(0, SizeConfig.blockSizeVertical,
                      SizeConfig.blockSizeHorizontal * 3, 0),
                  child: Image(
                    // width: SizeConfig.blockSizeHorizontal * 10,
                    // height: SizeConfig.blockSizeVertical * 10,
                    image: AssetImage('images/saudi-arabia.png'),
                  ),
                ),
              ],
              leading: Container(
                margin: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                padding: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 1,
                    right: SizeConfig.blockSizeHorizontal * 1),
                child: Image(
                  //fit: BoxFit.cover,
                  image: AssetImage('images/loggo.png'),
                ),
              ),
              backgroundColor: Colors.lightGreen[800],
              centerTitle: true,
              title: Text(
                'Home',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.blockSizeVertical * 10,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightGreen[800],
                  ),
                  MainLayer()
                ],
              ),
            )));
  }
}

class MainLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 1,
        ),
        height: MediaQuery.of(context).size.height,
        child: Container(
          alignment: Alignment.center,
          child: ListView(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                        CupertinoPageRoute(
                            builder: (context) => ArabicAlphabet()));
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 4.2,
                        ),
                        child: Image(
                          image: AssetImage('images/circle1.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 5.5,
                        ),
                        child: Image(
                          image: AssetImage('images/Ellipse71.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 10,
                          ),
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('images/arabic.png'),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 23,
                              right: SizeConfig.blockSizeHorizontal * 38,
                              left: SizeConfig.blockSizeHorizontal * 38),
                          alignment: Alignment.center,
                          child: Text(
                            'Arabic Alphabets ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 30),
                          alignment: Alignment.bottomCenter,
                          child: Image(
                            image: AssetImage('images/star(1).png'),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 25),
                child: GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical,
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 15),
                        child: Image(
                          height: SizeConfig.blockSizeVertical * 24,
                          // width: SizeConfig.blockSizeHorizontal * 25,
                          image: AssetImage('images/circle1.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 2,
                        ),
                        child: Image(
                          height: SizeConfig.blockSizeVertical * 22,
                          //  width: SizeConfig.blockSizeHorizontal * 23,
                          image: AssetImage('images/Ellipse71.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 5,
                          ),
                          alignment: Alignment.center,
                          child: Image(
                              image: AssetImage(
                                'images/alef.png',
                              ),
                              fit: BoxFit.fill,
                              height: SizeConfig.blockSizeVertical * 10,
                              width: SizeConfig.blockSizeHorizontal * 22)),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 16,
                              right: SizeConfig.blockSizeHorizontal * 38,
                              left: SizeConfig.blockSizeHorizontal * 38),
                          alignment: Alignment.center,
                          child: Text(
                            'Character Sites',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.8),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 22.2,
                          ),
                          alignment: Alignment.center,
                          child: Image(
                            height: SizeConfig.blockSizeVertical * 5,
                            width: SizeConfig.blockSizeHorizontal * 8,
                            image: AssetImage('images/star(1).png'),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 2),
              Container(
                margin: EdgeInsets.only(
                    right: SizeConfig.blockSizeHorizontal * 22,
                    left: SizeConfig.blockSizeHorizontal * 22),
                alignment: Alignment.center,
                child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreen[800],
                    child: MaterialButton(
                      height: SizeConfig.blockSizeVertical * 5,
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal,
                          SizeConfig.blockSizeVertical,
                          SizeConfig.blockSizeHorizontal,
                          SizeConfig.blockSizeVertical),
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                            CupertinoPageRoute(
                                builder: (context) => Level1Test()));
                      },
                      child: Text(
                        "Level 1 Test",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.safeBlockHorizontal * 5),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4.5),
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 3,
                    right: SizeConfig.blockSizeHorizontal * 3),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: SizeConfig.blockSizeVertical * 1.8,
                      width: SizeConfig.blockSizeHorizontal * 37,
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal,
                          right: SizeConfig.blockSizeHorizontal),
                      child: Stack(children: [
                        Image(
                          height: SizeConfig.blockSizeVertical * 7.2,
                          width: SizeConfig.blockSizeHorizontal * 12.3,
                          image: AssetImage('images/medal.png'),
                          fit: BoxFit.fill,
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1.4,
                            // right: 25,
                          ),
                          child: Image(
                            width: 38,
                            height: 38,
                            image: AssetImage('images/1.png'),
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: SizeConfig.blockSizeVertical * 1.8,
                      width: SizeConfig.blockSizeHorizontal * 37,
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                        CupertinoPageRoute(
                            builder: (context) => ArabicWords()));
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 4.2,
                        ),
                        child: Image(
                          image: AssetImage('images/circle1.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 5.5,
                        ),
                        child: Image(
                          image: AssetImage('images/Ellipse71.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 8,
                          ),
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('images/arabic.png'),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 23,
                              right: SizeConfig.blockSizeHorizontal * 38,
                              left: SizeConfig.blockSizeHorizontal * 38),
                          alignment: Alignment.center,
                          child: Text(
                            'Arabic Words ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 30),
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('images/star(1).png'),
                          )),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 0.8,
                                left: SizeConfig.blockSizeHorizontal * 1.6),
                            child: Image(
                              image: AssetImage('images/Ellipse121.png'),
                              // color: Colors.greenAccent,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage('images/circle2.png'),
                              // color: Colors.greenAccent,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                    top: SizeConfig.blockSizeVertical * 5,
                                    left: SizeConfig.blockSizeHorizontal * 13),
                                child: Image(
                                  image: AssetImage('images/diet.png'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 10,
                                  top: SizeConfig.blockSizeVertical * 1.2,
                                ),
                                child: Text(
                                  'Food',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.3,
                                left: SizeConfig.blockSizeHorizontal * 1.7),
                            child: Image(
                              image: AssetImage('images/Ellipse121.png'),
                              // color: Colors.greenAccent,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 0.5,
                            ),
                            child: Image(
                              image: AssetImage('images/circle2.png'),
                              // color: Colors.greenAccent,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                    top: SizeConfig.blockSizeVertical * 5,
                                    left: SizeConfig.blockSizeHorizontal * 10),
                                child: Image(
                                  image: AssetImage('images/livingroom.png'),
                                  // color: Colors.greenAccent,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: SizeConfig.blockSizeVertical * 1.5,
                                    left: SizeConfig.blockSizeHorizontal * 11),
                                child: Text(
                                  'Furniture',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 0.9),
                        child: Image(
                          image: AssetImage('images/Ellipse121.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('images/cirlce3.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 5),
                            child: Image(
                              image: AssetImage('images/shirt.png'),
                              // color: Colors.greenAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.1),
                            child: Text(
                              'Clothes',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                alignment: Alignment.center,
                child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[400],
                    child: MaterialButton(
                      height: SizeConfig.blockSizeVertical * 5,
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 13,
                          SizeConfig.blockSizeVertical,
                          SizeConfig.blockSizeHorizontal * 13,
                          SizeConfig.blockSizeVertical),
                      onPressed: () {},
                      child: Text(
                        "Level 2 Test",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: SizeConfig.safeBlockHorizontal * 5),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 3,
                ),
                child: Image(
                  image: AssetImage('images/s2.png'),
                  // color: Colors.greenAccent,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 6),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                        CupertinoPageRoute(
                            builder: (context) => ArabicAlphabet(),
                            fullscreenDialog: true));
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 4.2,
                            left: SizeConfig.blockSizeHorizontal * 6),
                        child: Image(
                          image: AssetImage('images/circle4.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 40, left: 25),
                        child: Image(
                          image: AssetImage('images/Ellipse115.png'),
                          // color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 60),
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('images/arabicmix.png'),
                          )),
                      Container(
                          margin:
                              EdgeInsets.only(top: 185, right: 100, left: 100),
                          alignment: Alignment.center,
                          child: Text(
                            'Arabic Alphabets',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                ),
              ),
            ]),
          ]),
        ));
  }
}
