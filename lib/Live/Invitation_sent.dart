import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/Live_page1.dart';
import 'package:sebawayh/Live/chat_video.dart';
import 'package:sebawayh/Live/create_group2.dart';
import 'package:sebawayh/Live/lessons_live_calender.dart';
import 'package:sebawayh/Live/student_level_group.dart';
import 'package:sebawayh/Live/teacher_av_time.dart';
import 'package:sebawayh/main.dart';
import 'package:table_calendar/table_calendar.dart';

class InvitationSent extends StatelessWidget {
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
                child: CreatingGroup(),
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
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 75),
                height: MediaQuery.of(context).size.height,
                child: Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 3,
                      top: SizeConfig.blockSizeHorizontal * 3),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 3.5),
                        alignment: Alignment.center,
                        child: Text(
                          'Invitation has been sent',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.grey[600]),
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3.5),
                      Container(
                        alignment: Alignment.center,
                        child: Material(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.lightGreen[800],
                            child: MaterialButton(
                              height: SizeConfig.blockSizeVertical * 5,
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 20,
                                  SizeConfig.blockSizeVertical,
                                  SizeConfig.blockSizeHorizontal * 20,
                                  SizeConfig.blockSizeVertical),
                              onPressed: () {},
                              child: Text(
                                "DONE",
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
