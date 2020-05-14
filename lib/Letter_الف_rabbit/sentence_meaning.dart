import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerCorrect_Rabbit1.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerWrong_Rabbit.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/alef_mic.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/arrange_words.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/new_drop2.dart';

import 'package:sebawayh/Level_1_Test5.dart';
import 'package:sebawayh/main.dart';

class SentenceMeaning extends StatelessWidget {
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
                                  width: SizeConfig.blockSizeHorizontal * 20,
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
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            top: SizeConfig.blockSizeVertical,
                            right: 0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Choose the sentence which mean "',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'The boy went to school',
                                    style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5,
                                    )),
                                TextSpan(
                                    text: '".',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5,
                                    )),
                              ]),
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.fromLTRB(
                            0, 0, SizeConfig.blockSizeHorizontal, 0),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  child: MaterialButton(
                                    minWidth:
                                        SizeConfig.blockSizeHorizontal * 12,
                                    height: SizeConfig.blockSizeVertical * 7,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 15,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 15,
                                        0),
                                    onPressed: () {},
                                    child: Text(
                                      'ذهب الولد إلى البيت',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, 0, SizeConfig.blockSizeHorizontal, 0),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  child: MaterialButton(
                                    minWidth:
                                        SizeConfig.blockSizeHorizontal * 12,
                                    height: SizeConfig.blockSizeVertical * 7,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 10.5,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 10.5,
                                        0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  //ArrangeWords()
                                                  App2()));
                                    },
                                    child: Text(
                                      'ذهب الولد إلى المدرسة',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, 0, SizeConfig.blockSizeHorizontal, 0),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  child: MaterialButton(
                                    minWidth:
                                        SizeConfig.blockSizeHorizontal * 12,
                                    height: SizeConfig.blockSizeVertical * 7,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 12.5,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 12.5,
                                        0),
                                    onPressed: () {},
                                    child: Text(
                                      'كتب الولد على الدفتر',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
