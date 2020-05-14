import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Level_1_Test2.dart';
import 'package:sebawayh/main.dart';

class CorrectL1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.3,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.blockSizeVertical * 10,
                    color: Colors.lightGreen[800],
                  ),
                  MainLayer1()
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 65),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.check,
                    size: SizeConfig.blockSizeVertical * 17,
                    color: Colors.white,
                  ),
                  Text(
                    'Right!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 8.5),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5),
                  Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 5,
                        //  minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 20,
                            SizeConfig.blockSizeVertical,
                            SizeConfig.blockSizeHorizontal * 20,
                            SizeConfig.blockSizeVertical),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Level1Test2()));
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class MainLayer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 5, 0),
                      height: 15,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen[100],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 5, 0),
                      height: 15,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen[800],
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(15, 50, 0, 0),
                    child: Text(
                      '1/10',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: RichText(
                text: TextSpan(
                    text: 'What is the letter similar to ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '"k" ',
                          style: TextStyle(
                            color: Colors.lightGreen[800],
                            fontSize: 22,
                          )),
                      TextSpan(
                          text: 'in spelling? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          )),
                    ]),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  child: MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    onPressed: () {},
                    child: Text(
                      'ل',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  child: MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    onPressed: () {},
                    child: Text(
                      'ش',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Material(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.lightGreen[100],
                  child: MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    onPressed: () {},
                    child: Text(
                      'ك',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  )),
            ),
            SizedBox(
              height: 170,
            ),
          ],
        ),
      ),
    );
  }
}
