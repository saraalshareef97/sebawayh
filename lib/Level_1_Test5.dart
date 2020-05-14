import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/main.dart';
import 'package:sebawayh/passed_level1.dart';

class Level1Test5 extends StatelessWidget {
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
                  MainLayer12()
                ],
              ),
            )));
  }
}

class MainLayer12 extends StatefulWidget {
  @override
  _MainLayer12State createState() => _MainLayer12State();
}

class _MainLayer12State extends State<MainLayer12> {
  bool isPressed = false;
  bool isPressed2 = false;
  bool isPressed3 = false;

  bool duck = false;
  bool duckA = false;

  bool apple = false;
  bool appleA = false;

  bool banana = false;
  bool bananaA = false;

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
                        width: SizeConfig.blockSizeHorizontal * 75,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[800],
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Container(
                      //  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Text(
                    '10/10',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                  ))
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            Container(
                child: Text(
              'Match with the pictures ',
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.safeBlockHorizontal * 5,
              ),
            )),
            SizedBox(height: SizeConfig.blockSizeVertical * 9),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isPressed ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                            // minWidth: 50,
                            // height: 50,
                            onPressed: () {
                              setState(() {
                                isPressed = true;
                                duck = true;
                              });
                            },
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 8,
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Image(
                                image: AssetImage('images/duck.png'),
                              ),
                            ))),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: appleA ? Colors.red : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal * 45,
                          height: SizeConfig.blockSizeVertical * 8,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 4,
                              0,
                              SizeConfig.blockSizeHorizontal * 4,
                              0),
                          onPressed: () {
                            setState(() {
                              if (apple == true)
                                appleA = true;
                              else
                                appleA = false;
                            });
                          },
                          child: Text(
                            'تفاحة',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isPressed2 ? Colors.red : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                            // minWidth: 50,
                            // height: 50,
                            onPressed: () {
                              setState(() {
                                isPressed2 = true;
                                apple = true;
                              });
                            },
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 8,
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Image(
                                image: AssetImage('images/apple.png'),
                              ),
                            ))),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: bananaA ? Colors.grey : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal * 45,
                          height: SizeConfig.blockSizeVertical * 8,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 4,
                              0,
                              SizeConfig.blockSizeHorizontal * 4,
                              0),
                          onPressed: () {
                            setState(() {
                              if (banana == true)
                                bananaA = true;
                              else
                                bananaA = false;
                            });
                          },
                          child: Text(
                            'موز',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Material(
                        color: isPressed3 ? Colors.grey : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                            // minWidth: 50,
                            // height: 50,
                            onPressed: () {
                              setState(() {
                                isPressed3 = true;
                                banana = true;
                              });
                            },
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 8,
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Image(
                                image: AssetImage('images/banana.png'),
                              ),
                            ))),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Material(
                        color: duckA ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        child: MaterialButton(
                          minWidth: SizeConfig.blockSizeHorizontal * 45,
                          height: SizeConfig.blockSizeVertical * 8,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 4,
                              0,
                              SizeConfig.blockSizeHorizontal * 4,
                              0),
                          onPressed: () {
                            setState(() {
                              if (duck == true)
                                duckA = true;
                              else
                                duckA = false;
                              return Colors.red;
                            });
                          },
                          child: Text(
                            'بطة',
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
                      CupertinoPageRoute(builder: (context) => Passed()));
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
