import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/available_teachers.dart';
import 'package:sebawayh/Live/teacher_av_time.dart';
import 'package:sebawayh/main.dart';

class AvailableTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 0.5,
                ),
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: SizeConfig.blockSizeVertical * 2,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ))),
            Container(
              margin: EdgeInsets.fromLTRB(
                  SizeConfig.blockSizeHorizontal * 4, 0, 0, 0),
              child: Text(
                'Available teachers',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 3),
            Container(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4,
                  0, SizeConfig.blockSizeHorizontal * 4, 0),
              // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3,
                            SizeConfig.blockSizeVertical * 2,
                            0,
                            SizeConfig.blockSizeVertical * 2),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 30,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 3,
                                  SizeConfig.blockSizeVertical * 1,
                                  0,
                                  0),
                              child:
                                  Image(image: AssetImage('images/maan.png')),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.5),
                            child: Text(
                              'Ahmad Shaweesh',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 0.4,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, 0, SizeConfig.blockSizeVertical),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                // Icon(
                                //   Icons.star_border,
                                //   color: Colors.yellow[600],
                                // ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
            Container(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4,
                  0, SizeConfig.blockSizeHorizontal * 4, 0),
              // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3,
                            SizeConfig.blockSizeVertical * 2,
                            0,
                            SizeConfig.blockSizeVertical * 2),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 30,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 3,
                                  SizeConfig.blockSizeVertical * 1,
                                  0,
                                  0),
                              child:
                                  Image(image: AssetImage('images/maan.png')),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.5),
                            child: Text(
                              'Ahmad Shaweesh',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 0.4,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, 0, SizeConfig.blockSizeVertical),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                // Icon(
                                //   Icons.star_border,
                                //   color: Colors.yellow[600],
                                // ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
            Container(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4,
                  0, SizeConfig.blockSizeHorizontal * 4, 0),
              // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3,
                            SizeConfig.blockSizeVertical * 2,
                            0,
                            SizeConfig.blockSizeVertical * 2),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 30,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 3,
                                  SizeConfig.blockSizeVertical * 1,
                                  0,
                                  0),
                              child:
                                  Image(image: AssetImage('images/maan.png')),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.5),
                            child: Text(
                              'Ahmad Shaweesh',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 0.4,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, 0, SizeConfig.blockSizeVertical),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                // Icon(
                                //   Icons.star_border,
                                //   color: Colors.yellow[600],
                                // ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
            Container(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4,
                  0, SizeConfig.blockSizeHorizontal * 4, 0),
              // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3,
                            SizeConfig.blockSizeVertical * 2,
                            0,
                            SizeConfig.blockSizeVertical * 2),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 30,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 3,
                                  SizeConfig.blockSizeVertical * 1,
                                  0,
                                  0),
                              child:
                                  Image(image: AssetImage('images/maan.png')),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.5),
                            child: Text(
                              'Ahmad Shaweesh',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 0.4,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, 0, SizeConfig.blockSizeVertical),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                // Icon(
                                //   Icons.star_border,
                                //   color: Colors.yellow[600],
                                // ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
            Container(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4,
                  0, SizeConfig.blockSizeHorizontal * 4, 0),
              // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3,
                            SizeConfig.blockSizeVertical * 2,
                            0,
                            SizeConfig.blockSizeVertical * 2),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 30,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 3,
                                  SizeConfig.blockSizeVertical * 1,
                                  0,
                                  0),
                              child:
                                  Image(image: AssetImage('images/maan.png')),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 1.5),
                            child: Text(
                              'Ahmad Shaweesh',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 0.4,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, 0, SizeConfig.blockSizeVertical),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                                // Icon(
                                //   Icons.star_border,
                                //   color: Colors.yellow[600],
                                // ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  0, 0, SizeConfig.blockSizeHorizontal * 4, 0),
              alignment: Alignment.bottomRight,
              child: Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightGreen[800],
                  child: MaterialButton(
                    height: SizeConfig.blockSizeVertical * 4,
                    //  minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 17,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 17,
                        SizeConfig.blockSizeVertical),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => AvailableTime()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 4),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
