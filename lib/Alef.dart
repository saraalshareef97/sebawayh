import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Write_alef.dart';
import 'package:sebawayh/main.dart';

class Alef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 2.2,
                right: SizeConfig.blockSizeHorizontal * 2.2),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    iconSize: SizeConfig.blockSizeVertical * 2,
                  )),
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 4.5,
                    top: SizeConfig.blockSizeVertical * 0.8),
                child: RichText(
                    text: TextSpan(
                        text: 'Level 1',
                        style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                            color: Colors.black),
                        children: <TextSpan>[
                      TextSpan(
                          text: ' (Arabic Alphabets) ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                          )),
                    ])),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4),
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 3,
                      right: SizeConfig.blockSizeHorizontal * 3),
                  height: SizeConfig.blockSizeVertical * 60,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 5,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4),
                                child: Stack(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.lightGreen[800],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 1.2,
                                          SizeConfig.blockSizeVertical * 0.75,
                                          0,
                                          0),
                                      child: Icon(
                                        Icons.volume_up,
                                        size:
                                            SizeConfig.blockSizeVertical * 3.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal * 18,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text('حرف الألف',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.lightGreen[800],
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 7,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text('أ',
                              style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: SizeConfig.safeBlockHorizontal * 17,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 3.5,
                            right: SizeConfig.blockSizeHorizontal * 3.5,
                          ),
                          child: Text(
                              'هو أول حرف من حروف اللغة العربية وله ثلاث حركات ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 5)),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical * 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'إِ',
                                  style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'كسرة',
                                  style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'أُ',
                                  style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'ضمة',
                                  style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'أَ',
                                  style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'فتحة',
                                  style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(height: SizeConfig.blockSizeVertical * 6),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightGreen[800],
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 6.5,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 20,
                            SizeConfig.blockSizeVertical * 2,
                            SizeConfig.blockSizeHorizontal * 20,
                            SizeConfig.blockSizeVertical * 2),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => WriteAlef()));
                        },
                        child: Text(
                          "GO TO EXCERSISE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.safeBlockHorizontal * 4),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
            ])),
      ),
    );
  }
}
