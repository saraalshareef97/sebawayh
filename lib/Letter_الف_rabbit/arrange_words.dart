import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerCorrect_Rabbit1.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerWrong_Rabbit.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/alef_mic.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/translate_sent.dart';

import 'package:sebawayh/Level_1_Test5.dart';
import 'package:sebawayh/main.dart';

class ArrangeWords extends StatelessWidget {
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
                                size: SizeConfig.blockSizeVertical * 4,
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
                                  width: SizeConfig.blockSizeHorizontal * 50,
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
                              text:
                                  'Arrange the following words to be the correct sentence which means "  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5.5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'The boy went to school',
                                    style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5.5,
                                    )),
                                TextSpan(
                                    text: '" ?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5.5,
                                    )),
                              ]),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3,
                            SizeConfig.blockSizeVertical * 6,
                            SizeConfig.blockSizeHorizontal * 3,
                            0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal,
                                  right: SizeConfig.blockSizeHorizontal),
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
                                        SizeConfig.blockSizeHorizontal * 4,
                                    height: SizeConfig.blockSizeVertical * 9,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 7,
                                        0),
                                    onPressed: () {},
                                    child: Text(
                                      ' ذهب',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6),
                                    ),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal,
                                  right: SizeConfig.blockSizeHorizontal),
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
                                        SizeConfig.blockSizeHorizontal * 4,
                                    height: SizeConfig.blockSizeVertical * 9,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal,
                                        0,
                                        SizeConfig.blockSizeHorizontal,
                                        0),
                                    onPressed: () {},
                                    child: Text(
                                      'المدرسة',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6),
                                    ),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal,
                                  right: SizeConfig.blockSizeHorizontal),
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
                                        SizeConfig.blockSizeHorizontal * 4,
                                    height: SizeConfig.blockSizeVertical * 9,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal,
                                        0,
                                        SizeConfig.blockSizeHorizontal,
                                        0),
                                    onPressed: () {},
                                    child: Text(
                                      'إلى',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6),
                                    ),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal,
                                  right: SizeConfig.blockSizeHorizontal),
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
                                        SizeConfig.blockSizeHorizontal * 4,
                                    height: SizeConfig.blockSizeVertical * 9,
                                    padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 1.5,
                                        0,
                                        SizeConfig.blockSizeHorizontal * 1.5,
                                        0),
                                    onPressed: () {},
                                    child: Text(
                                      'الولد',
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
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 7,
                              left: SizeConfig.blockSizeHorizontal * 4,
                              right: SizeConfig.blockSizeHorizontal * 4),
                          child: Divider(
                            thickness: 1.5,
                          )),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 20,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 20,
                            right: SizeConfig.blockSizeHorizontal * 2),
                        child: Material(
                            color: Colors.lightGreen[800],
                            borderRadius: BorderRadius.circular(25),
                            child: MaterialButton(
                              height: SizeConfig.blockSizeVertical * 3,
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 17,
                                  SizeConfig.blockSizeVertical,
                                  SizeConfig.blockSizeHorizontal * 17,
                                  SizeConfig.blockSizeVertical),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            TranslateSentence()));
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ]))));
  }
}
