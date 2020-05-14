import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerCorrect_Rabbit1.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/AnswerWrong_Rabbit.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/completed_rabbit.dart';

import 'package:sebawayh/Level_1_Test5.dart';
import 'package:sebawayh/main.dart';

class TranslateRabbit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Center(
              child: Container(
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0,
                                        SizeConfig.blockSizeHorizontal, 0),
                                    height: SizeConfig.blockSizeVertical * 2,
                                    width: SizeConfig.blockSizeHorizontal * 80,
                                    decoration: BoxDecoration(
                                        color: Colors.lightGreen[800],
                                        borderRadius:
                                            BorderRadius.circular(20)),
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
                                text: 'Translate "',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Rabbit',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5.5,
                                          color: Colors.lightGreen[800])),
                                  TextSpan(
                                      text: '".',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  5.5,
                                          color: Colors.black)),
                                ]),
                          ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical * 5),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 4,
                              0,
                              SizeConfig.blockSizeHorizontal * 4,
                              0),
                          alignment: Alignment.center,
                          child: Image(image: AssetImage('images/rabbit2.png')),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 3,
                                right: SizeConfig.blockSizeHorizontal * 3,
                                top: SizeConfig.blockSizeVertical * 8),
                            width: MediaQuery.of(context).size.width,
                            height: SizeConfig.blockSizeVertical * 9,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[400]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  disabledBorder: InputBorder.none,
                                  enabled: false,
                                  hintText: 'Write in arabic',
                                  contentPadding: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 4,
                                      top: SizeConfig.blockSizeVertical * 3),
                                  hintStyle: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4.5,
                                      color: Colors.grey[400]),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            )),
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
                                              CompletedRabbit()));
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
                      ])),
            )));
  }
}
