import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerCorrect_Rabbit1.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerWrong_Rabbit.dart';

import 'package:sebawayh/Level_1_Test5.dart';
import 'package:sebawayh/main.dart';

class NextRabbit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 2,
                    left: SizeConfig.blockSizeHorizontal * 3,
                    right: SizeConfig.blockSizeHorizontal * 3),
                // color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: SizeConfig.blockSizeVertical * 2,
                                  width: SizeConfig.blockSizeHorizontal * 80,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[100],
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0, 0, SizeConfig.blockSizeHorizontal, 0),
                                  height: SizeConfig.blockSizeVertical * 2,
                                  width: SizeConfig.blockSizeHorizontal * 30,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[800],
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            top: SizeConfig.blockSizeVertical,
                            right: 0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Which of these words means a " ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Rabbit',
                                    style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5,
                                    )),
                                TextSpan(
                                    text: '" ?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5,
                                    )),
                              ]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, SizeConfig.blockSizeVertical * 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                FontAwesomeIcons.volumeUp,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: 0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[400],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  child: MaterialButton(
                                    minWidth:
                                        SizeConfig.blockSizeHorizontal * 75,
                                    height: SizeConfig.blockSizeVertical * 8,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WrongRabbit()));
                                    },
                                    child: Text(
                                      'تفاحة',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, SizeConfig.blockSizeVertical * 3, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                FontAwesomeIcons.volumeUp,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: 0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[400],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  child: MaterialButton(
                                    minWidth:
                                        SizeConfig.blockSizeHorizontal * 75,
                                    height: SizeConfig.blockSizeVertical * 8,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CorrectRabbit1()));
                                    },
                                    child: Text(
                                      'أرنب',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, SizeConfig.blockSizeVertical * 3, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                FontAwesomeIcons.volumeUp,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: 0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[400],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  child: MaterialButton(
                                    minWidth:
                                        SizeConfig.blockSizeHorizontal * 75,
                                    height: SizeConfig.blockSizeVertical * 8,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WrongRabbit()));
                                    },
                                    child: Text(
                                      'عنب',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}

class MainLayer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 5, 0),
                      height: 15,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen[100],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 5, 0),
                      height: 15,
                      width: 230,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen[800],
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(15, 50, 0, 0),
                    child: Text(
                      '8/10',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
                child: RichText(
                    text: TextSpan(
              text: 'Match with the correct spelling ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ))),
            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 60,
                          padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                          onPressed: () {},
                          child: Text(
                            'Lo',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 60,
                          padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                          onPressed: () {},
                          child: Text(
                            'َل',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 60,
                          padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                          onPressed: () {},
                          child: Text(
                            'La',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 60,
                          padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                          onPressed: () {},
                          child: Text(
                            'لِ',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 60,
                          padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                          onPressed: () {},
                          child: Text(
                            'Le',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 60,
                          padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                          onPressed: () {},
                          child: Text(
                            'لُ',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 175,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 22, 0),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Level1Test5()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.black54, fontSize: 23),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
