import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Account/edit_account.dart';
import 'package:sebawayh/Account/total_hours.dart';
import 'package:sebawayh/Live/lessons_live_calender.dart';
import 'package:sebawayh/main.dart';

class Account extends StatelessWidget {
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
                    child: IconButton(
                      icon: Icon(Icons.border_color),
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                            CupertinoPageRoute(
                                builder: (context) => EditAccount()));
                      },
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                        CupertinoPageRoute(builder: (context) => TotalHours()));
                  },
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.blueGrey[100],
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 3),
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
                Container(
                    margin: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 3, 0, 0, 0),
                    child: ListTile(
                      leading: Icon(
                        Icons.share,
                        size: SizeConfig.blockSizeVertical * 3,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Invite Freidns',
                        style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 4),
                      ),
                      subtitle: Container(
                          child: Row(
                        children: <Widget>[
                          Text('Invite your Friends and get '),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(' 10 stars ')
                        ],
                      )),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 5,
                      SizeConfig.blockSizeVertical * 1.5,
                      SizeConfig.blockSizeHorizontal * 5,
                      0),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 5,
                    top: SizeConfig.blockSizeVertical * 1.5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Plan',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: SizeConfig.safeBlockHorizontal * 5),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.blockSizeHorizontal * 5,
                              top: SizeConfig.blockSizeVertical * 1.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "&20 per user/month",
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 5,
                      SizeConfig.blockSizeVertical * 1.5,
                      SizeConfig.blockSizeHorizontal * 5,
                      0),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 5,
                    top: SizeConfig.blockSizeVertical * 1.5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Card',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: SizeConfig.safeBlockHorizontal * 5),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.blockSizeHorizontal * 5,
                              top: SizeConfig.blockSizeVertical * 1.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "77785 ***************77",
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0,
                            SizeConfig.blockSizeVertical * 3,
                            SizeConfig.blockSizeHorizontal * 5,
                            0),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 2),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('My class reservations',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5)),
                              Container(
                                  margin: EdgeInsets.only(
                                      right:
                                          SizeConfig.blockSizeHorizontal * 1.5,
                                      top: SizeConfig.blockSizeVertical * 0.2),
                                  alignment: Alignment.center,
                                  child: Calendarti()),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0,
                            SizeConfig.blockSizeVertical * 3,
                            SizeConfig.blockSizeHorizontal * 5,
                            0),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: SizeConfig.blockSizeVertical),
                        child: Row(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.purple,
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.blockSizeVertical * 2,
                                      left: SizeConfig.blockSizeHorizontal * 4),
                                  child: Image(
                                      image: AssetImage(
                                          'images/achievement.png'))),
                            ]),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: SizeConfig.blockSizeHorizontal * 4),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Level 1 Completed',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.blockSizeVertical,
                                    ),
                                    Text(
                                      'Congratulations! you passed level 2',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 3.5),
                        child: Row(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.red[300],
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.blockSizeVertical * 2,
                                      left: SizeConfig.blockSizeHorizontal * 4),
                                  child: Image(
                                      image: AssetImage(
                                          'images/achievement.png'))),
                            ]),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: SizeConfig.blockSizeHorizontal * 4),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Level 1 Completed',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.blockSizeVertical,
                                    ),
                                    Text(
                                      'Congratulations! you passed level 2',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 3.5),
                        child: Row(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.lime[400],
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.blockSizeVertical * 2,
                                      left: SizeConfig.blockSizeHorizontal * 4),
                                  child: Image(
                                      image: AssetImage(
                                          'images/achievement.png'))),
                            ]),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: SizeConfig.blockSizeHorizontal * 4),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Level 1 Completed',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.blockSizeVertical,
                                    ),
                                    Text(
                                      'Congratulations! you passed level 2',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 3.5),
                        child: Row(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue[200],
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.blockSizeVertical * 2,
                                      left: SizeConfig.blockSizeHorizontal * 4),
                                  child: Image(
                                      image: AssetImage(
                                          'images/achievement.png'))),
                            ]),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 4,
                                  right: SizeConfig.blockSizeHorizontal * 4),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Level 1 Completed',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.blockSizeVertical,
                                    ),
                                    Text(
                                      'Congratulations! you passed level 2',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ]),
            ])));
  }
}
