import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Account/edit_account.dart';
import 'package:sebawayh/main.dart';

class TotalHours extends StatelessWidget {
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
                'Account',
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
                  margin: EdgeInsets.fromLTRB(0, SizeConfig.blockSizeVertical,
                      SizeConfig.blockSizeHorizontal * 5, 0),
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                0, SizeConfig.blockSizeVertical * 4, 0, 0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.blueGrey[100],
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 6),
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage('images/man.png'),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        0, SizeConfig.blockSizeVertical, 0, 0),
                    alignment: Alignment.center,
                    child: Text('Ahmad Shaweesh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: SizeConfig.safeBlockHorizontal * 5))),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        0, SizeConfig.blockSizeVertical, 0, 0),
                    alignment: Alignment.center,
                    child: Text('ahmad@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: SizeConfig.safeBlockHorizontal * 3))),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 5,
                      SizeConfig.blockSizeVertical * 3,
                      SizeConfig.blockSizeHorizontal * 5,
                      0),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 5),
                Container(
                    alignment: Alignment.center,
                    child: Image(image: AssetImage('images/clockwise.png'))),
                Container(
                    alignment: Alignment.center,
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
                    child: Text(
                      'Total Hours',
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 7),
                    )),
                Container(
                    alignment: Alignment.center,
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                    child: Text(
                      '7:30',
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 7),
                    )),
                SizedBox(height: SizeConfig.blockSizeVertical * 5),
                Container(
                  alignment: Alignment.center,
                  child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightGreen[800],
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 5,
                        minWidth: SizeConfig.blockSizeHorizontal * 85,
                        // padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                        onPressed: () {},
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.safeBlockHorizontal * 4),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ]),
            ])));
  }
}
