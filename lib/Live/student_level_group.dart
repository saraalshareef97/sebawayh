import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Live/completed.dart';
import 'package:sebawayh/Live/create_group2.dart';
import 'package:sebawayh/main.dart';

class StudentLevelGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(children: [
                  Container(
                      margin:
                          EdgeInsets.only(left: SizeConfig.blockSizeHorizontal),
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        iconSize: SizeConfig.blockSizeVertical * 2,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical),
                    alignment: Alignment.topLeft,
                    child: Text('Choose student level group',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 5)),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5),
                  Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 1',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.circle,
                                    color: Colors.lightGreen[800],
                                    size: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: SizeConfig.blockSizeVertical * 0.4,
                                        left: SizeConfig.blockSizeHorizontal *
                                            0.5),
                                    child: Icon(
                                      Icons.brightness_1,
                                      color: Colors.lightGreen[800],
                                      size: SizeConfig.blockSizeVertical * 2.58,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 5,
                                    right: SizeConfig.blockSizeHorizontal * 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.grey[300],
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Material(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    child: MaterialButton(
                                      minWidth:
                                          SizeConfig.blockSizeHorizontal * 75,
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 2',
                                        style: TextStyle(
                                            color: Colors.lightGreen[800],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 3',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 4',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 5',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 6',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 7',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 8',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.circle,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                      height: SizeConfig.blockSizeVertical * 5,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0,
                                          SizeConfig.blockSizeHorizontal * 5,
                                          0),
                                      onPressed: () {},
                                      child: Text(
                                        'Level 9',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 4),
                        ],
                      )),
                  SizedBox(height: SizeConfig.blockSizeVertical * 4),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal * 5),
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightGreen[800],
                        child: MaterialButton(
                          height: SizeConfig.blockSizeVertical * 5,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 15,
                              SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeHorizontal * 15,
                              SizeConfig.blockSizeVertical),
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => CreatingGroup()));
                          },
                          child: Text(
                            "NEXT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockHorizontal * 4),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ]))));
  }
}
