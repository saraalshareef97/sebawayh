import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/Live_page1.dart';
import 'package:sebawayh/Live/lessons_live_calender.dart';
import 'package:sebawayh/main.dart';

class Live extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: Container(
                margin: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                padding: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 1,
                    right: SizeConfig.blockSizeHorizontal * 1),
                child: Image(
                  //fit: BoxFit.cover,
                  image: AssetImage('images/loggo.png'),
                ),
              ),
              backgroundColor: Colors.lightGreen[800],
              centerTitle: true,
              title: Text(
                'Live',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.blockSizeVertical * 20,
                    color: Colors.lightGreen[800],
                  ),
                  MainLayer()
                ],
              ),
            )));
  }
}

class MainLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 1,
        ),
        height: MediaQuery.of(context).size.height,
        child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 3.5,
                        ),
                        child: Image(
                          image: AssetImage('images/Ellipse74.png'),
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                            CupertinoPageRoute(
                                builder: (context) => LivePage1()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 30,
                            left: SizeConfig.blockSizeHorizontal * 24.5),

                        child: Image(
                          image: AssetImage('images/Levels.png'),
                          alignment: Alignment.bottomCenter,
                        ),

                        // Text(
                        //   'Levels',
                        //   style: TextStyle(
                        //       fontSize: SizeConfig.safeBlockHorizontal * 6),
                        //   textAlign: TextAlign.center,
                        // )
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 3.5),
                        child:
                            Image(image: AssetImage('images/Ellipse74.png'))),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => LiveCalender()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 30,
                              left: SizeConfig.blockSizeHorizontal * 23),
                          child: Image(
                            image: AssetImage('images/Lessons.png'),
                            alignment: Alignment.bottomCenter,
                          ),
                        )),
                  ],
                )
              ],
            )));
  }
}
