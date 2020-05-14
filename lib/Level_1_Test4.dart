import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Level_1_Test5.dart';
import 'package:sebawayh/main.dart';

class Level1Test4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.lightGreen[800],
              centerTitle: true,
              title: Text(
                'Level 1 Test',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: SizeConfig.blockSizeVertical * 10,
                    color: Colors.lightGreen[800],
                  ),
                  MainLayer1()
                ],
              ),
            )));
  }
}

class MainLayer1 extends StatefulWidget {
  @override
  _MainLayer1State createState() => _MainLayer1State();
}

class _MainLayer1State extends State<MainLayer1> {
  bool isSelected = false;
  bool isSelected2 = false;
  bool isSelected3 = false;

  bool isLo = false;
  bool isloA = false;
  bool isLa = false;
  bool islaA = false;
  bool isLe = false;
  bool isleA = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5),
      height: MediaQuery.of(context).size.height,
      child: Container(
        margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4.5, 0,
            SizeConfig.blockSizeHorizontal * 4.5, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 6),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: SizeConfig.blockSizeVertical * 2,
                        width: SizeConfig.blockSizeHorizontal * 75,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[100],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        height: SizeConfig.blockSizeVertical * 2,
                        width: SizeConfig.blockSizeHorizontal * 55,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[800],
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 3.5),
                  Container(
                      //  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Text(
                    '8/10',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                  ))
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            Container(
                child: Text(
              'Match with the correct spelling ',
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.safeBlockHorizontal * 5,
              ),
            )),
            SizedBox(height: SizeConfig.blockSizeVertical * 9),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 3,
                  right: SizeConfig.blockSizeHorizontal * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isSelected ? Colors.grey : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal,
                          height: SizeConfig.blockSizeVertical * 7,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 12,
                              0,
                              SizeConfig.blockSizeHorizontal * 12,
                              0),
                          onPressed: () {
                            setState(() {
                              isSelected = true;
                              isLo = true;
                            });
                          },
                          child: Text(
                            'Lo',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: islaA ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal,
                          height: SizeConfig.blockSizeVertical * 7,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 12,
                              0,
                              SizeConfig.blockSizeHorizontal * 12,
                              0),
                          onPressed: () {
                            setState(() {
                              if (isLa == true)
                                islaA = true;
                              else
                                islaA = false;
                            });
                          },
                          child: Text(
                            'لَ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 3,
                  right: SizeConfig.blockSizeHorizontal * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isSelected2 ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal,
                          height: SizeConfig.blockSizeVertical * 7,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 12,
                              0,
                              SizeConfig.blockSizeHorizontal * 12,
                              0),
                          onPressed: () {
                            setState(() {
                              isSelected2 = true;
                              isLa = true;
                            });
                          },
                          child: Text(
                            'La',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isleA ? Colors.blueGrey : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal,
                          height: SizeConfig.blockSizeVertical * 7,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 12,
                              0,
                              SizeConfig.blockSizeHorizontal * 12,
                              0),
                          onPressed: () {
                            setState(() {
                              if (isLe == true)
                                isleA = true;
                              else
                                isleA = false;
                            });
                          },
                          child: Text(
                            'لِ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 3,
                  right: SizeConfig.blockSizeHorizontal * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isSelected3 ? Colors.blueGrey : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal,
                          height: SizeConfig.blockSizeVertical * 7,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 12,
                              0,
                              SizeConfig.blockSizeHorizontal * 12,
                              0),
                          onPressed: () {
                            setState(() {
                              isSelected3 = true;
                              isLe = true;
                            });
                          },
                          child: Text(
                            'Le',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isloA ? Colors.grey : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal,
                          height: SizeConfig.blockSizeVertical * 7,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 12,
                              0,
                              SizeConfig.blockSizeHorizontal * 12,
                              0),
                          onPressed: () {
                            setState(() {
                              if (isLo == true)
                                isloA = true;
                              else
                                isloA = false;
                            });
                          },
                          child: Text(
                            'لُ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 15),
            Container(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Level1Test5()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: SizeConfig.safeBlockHorizontal * 6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
