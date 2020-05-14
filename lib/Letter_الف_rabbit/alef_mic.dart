import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerCorrect_Rabbit1.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerWrong_Rabbit.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/translate_rabbit.dart';

import 'package:sebawayh/Level_1_Test5.dart';
import 'package:sebawayh/main.dart';

class AlefMic extends StatelessWidget {
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
                                  width: SizeConfig.blockSizeHorizontal * 60,
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
                          child: Text(
                            'Tap and hold on microphone and say the correct spelling.',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          )),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(
                            0,
                            SizeConfig.blockSizeVertical * 8,
                            SizeConfig.blockSizeHorizontal * 5,
                            0),
                        child: RichText(
                          text: TextSpan(
                              text: 'أ',
                              style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: SizeConfig.safeBlockHorizontal * 11,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'رنب',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 11,
                                        color: Colors.black)),
                              ]),
                        ),
                        // Image(
                        //   image: AssetImage('images/Arrnab.png'),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => TranslateRabbit()));
                        },
                        child: Container(
                            child: Stack(children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image(image: AssetImage('images/c1.png')),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical),
                            alignment: Alignment.center,
                            child: Image(image: AssetImage('images/c2.png')),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 2),
                            alignment: Alignment.center,
                            child: Image(image: AssetImage('images/c3.png')),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 6),
                            alignment: Alignment.center,
                            child: Image(
                                image: AssetImage('images/microphone.png')),
                          ),
                        ])),
                      ),
                    ]))));
  }
}
