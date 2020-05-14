import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Level_1_Test4.dart';
import 'package:sebawayh/level1_test3_correct.dart';
import 'package:sebawayh/level1_test3_wrong.dart';
import 'package:sebawayh/main.dart';

class Level1Test3 extends StatelessWidget {
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

class MainLayer1 extends StatelessWidget {
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
                        width: SizeConfig.blockSizeHorizontal * 42,
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
                    '5/10',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                  ))
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            Container(
                child: Text(
              'Choose the correct answer for this letter ',
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.safeBlockHorizontal * 5,
              ),
            )),
            SizedBox(height: SizeConfig.blockSizeVertical * 6),
            Container(
              alignment: Alignment.center,
              child: Material(
                  color: Colors.lightGreen[800],
                  borderRadius: BorderRadius.circular(5),
                  child: MaterialButton(
                    minWidth: SizeConfig.blockSizeHorizontal * 23,
                    height: SizeConfig.blockSizeVertical * 8,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 4,
                        0,
                        SizeConfig.blockSizeHorizontal * 4,
                        0),
                    onPressed: () {},
                    child: Text(
                      'ل',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 7),
                    ),
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 16,
                  0, SizeConfig.blockSizeHorizontal * 16, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  child: MaterialButton(
                    height: SizeConfig.blockSizeVertical * 8,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => WrongTest3()));
                    },
                    child: Text(
                      'سِ    سُ    لِ',
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 7),
                    ),
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 3),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 16,
                  0, SizeConfig.blockSizeHorizontal * 16, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  child: MaterialButton(
                    height: SizeConfig.blockSizeVertical * 8,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => CorrectTest3()));
                    },
                    child: Text(
                      'لَ     لُ     لِ',
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 7),
                    ),
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 3),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 16,
                  0, SizeConfig.blockSizeHorizontal * 16, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  child: MaterialButton(
                    height: SizeConfig.blockSizeVertical * 8,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => WrongTest3()));
                    },
                    child: Text(
                      'كَ      كُ      لِ',
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 7),
                    ),
                  )),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 5),
            Container(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Level1Test4()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.black54, fontSize: 23),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
