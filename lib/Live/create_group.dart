import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/Live_page1.dart';
import 'package:sebawayh/Live/lessons_live_calender.dart';
import 'package:sebawayh/Live/student_level_group.dart';
import 'package:sebawayh/Live/teacher_av_time.dart';
import 'package:sebawayh/main.dart';
import 'package:table_calendar/table_calendar.dart';

class CreateGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
                child: Stack(children: [
              Opacity(
                opacity: 0.3,
                child: LiveCalender(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey[400],
                          spreadRadius: 0.5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 25),
                height: MediaQuery.of(context).size.height,
                child: Container(
                  margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 2.5,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            size: SizeConfig.blockSizeVertical * 3,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 100),
                        alignment: Alignment.center,
                        child: Text(
                          '13 Jun',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 7),
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                      Container(
                        // margin: EdgeInsets.only(left: 100),
                        alignment: Alignment.center,
                        child: Text(
                          'Classes Time',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 25,
                            right: SizeConfig.blockSizeHorizontal * 25,
                            top: SizeConfig.blockSizeVertical * 3),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '2 PM',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    child: Text(
                                  '__',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5),
                                )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '3 PM',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '2 PM',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    child: Text(
                                  '__',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5),
                                )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '3 PM',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '2 PM',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    child: Text(
                                  '__',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5),
                                )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '3 PM',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    child: Text(
                                  '__',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5),
                                )),
                                SizedBox(width: SizeConfig.blockSizeHorizontal),
                                Container(
                                    width: SizeConfig.blockSizeHorizontal * 12,
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: '',
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.lightGreen[800]))),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 18),
                        alignment: Alignment.center,
                        child: Material(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.lightGreen[800],
                            child: MaterialButton(
                              height: SizeConfig.blockSizeVertical * 5,
                              //  minWidth: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 15,
                                  SizeConfig.blockSizeVertical,
                                  SizeConfig.blockSizeHorizontal * 15,
                                  SizeConfig.blockSizeVertical),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => StudentLevelGroup(),
                                    ));
                              },
                              child: Text(
                                "SAVE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ]))));
  }
}
