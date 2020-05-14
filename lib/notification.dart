import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/main.dart';

class Notifications extends StatelessWidget {
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
                'Notifications',
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
            child: ListView(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 3,
                      left: SizeConfig.blockSizeHorizontal * 5,
                      right: SizeConfig.blockSizeHorizontal * 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.lightGreen[800],
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.9,
                                left: SizeConfig.blockSizeHorizontal * 4),
                            child: Image(image: AssetImage('images/kaas.png'))),
                      ]),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 2,
                            top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Congratulations! you passed level 3 test',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 0.6),
                              Text(
                                '5 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5,
                      right: SizeConfig.blockSizeHorizontal * 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.lightGreen[800],
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.9,
                                left: SizeConfig.blockSizeHorizontal * 4),
                            child: Image(image: AssetImage('images/kaas.png'))),
                      ]),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 2,
                            top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Congratulations! you passed level 3 test',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 0.6),
                              Text(
                                '5 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5,
                      right: SizeConfig.blockSizeHorizontal * 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.lightGreen[800],
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.9,
                                left: SizeConfig.blockSizeHorizontal * 4),
                            child: Image(image: AssetImage('images/kaas.png'))),
                      ]),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 2,
                            top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Congratulations! you passed level 3 test',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 0.6),
                              Text(
                                '5 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5,
                      right: SizeConfig.blockSizeHorizontal * 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.lightGreen[800],
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.9,
                                left: SizeConfig.blockSizeHorizontal * 4),
                            child: Image(image: AssetImage('images/kaas.png'))),
                      ]),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 2,
                            top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Congratulations! you passed level 3 test',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 0.6),
                              Text(
                                '5 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5,
                      right: SizeConfig.blockSizeHorizontal * 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.lightGreen[800],
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.9,
                                left: SizeConfig.blockSizeHorizontal * 4),
                            child: Image(image: AssetImage('images/kaas.png'))),
                      ]),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 2,
                            top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Congratulations! you passed level 3 test',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 0.6),
                              Text(
                                '5 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 5,
                      right: SizeConfig.blockSizeHorizontal * 5),
                  child: Row(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.lightGreen[800],
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.9,
                                left: SizeConfig.blockSizeHorizontal * 4),
                            child: Image(image: AssetImage('images/kaas.png'))),
                      ]),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 2,
                            top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Congratulations! you passed level 3 test',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 0.6),
                              Text(
                                '5 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ]),
            ])));
  }
}
