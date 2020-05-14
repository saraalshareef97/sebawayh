import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Alef.dart';
import 'package:sebawayh/main.dart';

class ArabicAlphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: SizeConfig.blockSizeVertical * 2,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 5,
                          top: SizeConfig.blockSizeVertical * 0.3),
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
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                          ])),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 3,
                          right: SizeConfig.blockSizeHorizontal * 3),
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 5,
                                  color: Colors.white,
                                  child: MaterialButton(
                                      padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 1.5,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 0.8,
                                      ),
                                      onPressed: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .blockSizeVertical *
                                                    1.5),
                                            child: Text(
                                              'Alef',
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  CupertinoPageRoute(
                                                      builder: (context) =>
                                                          Alef()));
                                            },
                                            child: Container(
                                              child: Text(
                                                'أ',
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                SizeConfig.blockSizeVertical *
                                                    2.2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(Icons.star_border,
                                                    color: Colors.yellow[600]),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 5,
                                  color: Colors.white,
                                  child: MaterialButton(
                                      padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 1.5,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 0.8,
                                      ),
                                      onPressed: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .blockSizeVertical *
                                                    1.5),
                                            child: Text(
                                              'Baa',
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                'ب',
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                SizeConfig.blockSizeVertical *
                                                    2.2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(Icons.star_border,
                                                    color: Colors.yellow[600]),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 5,
                                  color: Colors.white,
                                  child: MaterialButton(
                                      padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 1.5,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 0.8,
                                      ),
                                      onPressed: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .blockSizeVertical *
                                                    1.5),
                                            child: Text(
                                              'Taa',
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                'ت',
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                SizeConfig.blockSizeVertical *
                                                    2.2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(Icons.star_border,
                                                    color: Colors.yellow[600]),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 5,
                                  color: Colors.white,
                                  child: MaterialButton(
                                      padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 1.5,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 0.8,
                                      ),
                                      onPressed: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .blockSizeVertical *
                                                    1.5),
                                            child: Text(
                                              'Thaa',
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                'ث',
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                SizeConfig.blockSizeVertical *
                                                    2.2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(Icons.star_border,
                                                    color: Colors.yellow[600]),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 5,
                                  color: Colors.white,
                                  child: MaterialButton(
                                      padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 1.5,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 0.8,
                                      ),
                                      onPressed: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .blockSizeVertical *
                                                    1.5),
                                            child: Text(
                                              'Jeem',
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                'ج',
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                SizeConfig.blockSizeVertical *
                                                    2.2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(Icons.star_border,
                                                    color: Colors.yellow[600]),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 5,
                                  color: Colors.white,
                                  child: MaterialButton(
                                      padding: EdgeInsets.fromLTRB(
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 1.5,
                                        SizeConfig.blockSizeHorizontal * 5,
                                        SizeConfig.blockSizeVertical * 0.8,
                                      ),
                                      onPressed: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .blockSizeVertical *
                                                    1.5),
                                            child: Text(
                                              'Haa',
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                'ح',
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .safeBlockHorizontal *
                                                        12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                SizeConfig.blockSizeVertical *
                                                    2.2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(Icons.star_border,
                                                    color: Colors.yellow[600]),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow[600],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
