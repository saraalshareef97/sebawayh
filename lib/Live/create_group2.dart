import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Live/Invitation_sent.dart';
import 'package:sebawayh/Live/completed.dart';
import 'package:sebawayh/main.dart';

class CreatingGroup extends StatelessWidget {
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
                    child: Text('Create group',
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
                                Icons.check_box,
                                color: Colors.lightGreen[800],
                                size: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                        'Ahmad Shaweesh',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box,
                                color: Colors.lightGreen[800],
                                size: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                        'Yousef Zeiad',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 4,
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
                                        'Ahmad Shaweesh',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box,
                                color: Colors.lightGreen[800],
                                size: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                        'Yousef Zeiad',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box,
                                color: Colors.lightGreen[800],
                                size: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                        'Yousef Zeiad',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box,
                                color: Colors.lightGreen[800],
                                size: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 4,
                                    right: SizeConfig.blockSizeHorizontal * 4),
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
                                        'Yousef Zeiad',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 4,
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
                                        'Ahmad Shaweesh',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 4,
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
                                        'Ahmad Shaweesh',
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
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey[400],
                                size: SizeConfig.blockSizeVertical * 4,
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
                                        'Ahmad Shaweesh',
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
                        ],
                      )),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                        left: 0, right: SizeConfig.blockSizeHorizontal * 7),
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightGreen[800],
                        child: MaterialButton(
                          height: SizeConfig.blockSizeVertical * 5,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 8,
                              SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeHorizontal * 8,
                              SizeConfig.blockSizeVertical),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InvitationSent()));
                          },
                          child: Text(
                            "SEND INVITE",
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
