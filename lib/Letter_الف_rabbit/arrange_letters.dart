import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/alef_mic.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/new_drop.dart';

import 'package:sebawayh/main.dart';

class ArrangeLetters extends StatefulWidget {
  @override
  _ArrangeLettersState createState() => _ArrangeLettersState();
}

class _ArrangeLettersState extends State<ArrangeLetters> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 2,
                    left: SizeConfig.blockSizeHorizontal * 3,
                    right: SizeConfig.blockSizeHorizontal * 3),
                // color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                size: SizeConfig.blockSizeVertical * 4,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: SizeConfig.blockSizeVertical * 2,
                                  width: SizeConfig.blockSizeHorizontal * 80,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[100],
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0, 0, SizeConfig.blockSizeHorizontal, 0),
                                  height: SizeConfig.blockSizeVertical * 2,
                                  width: SizeConfig.blockSizeHorizontal * 60,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[800],
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                            top: SizeConfig.blockSizeVertical,
                            right: 0),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  'Arrange the following letters to be the correct word which means a "  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5.5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Rabbit',
                                    style: TextStyle(
                                      color: Colors.lightGreen[800],
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5.5,
                                    )),
                                TextSpan(
                                    text: '" ?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5.5,
                                    )),
                              ]),
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),

                      //   Container(child: NewDrop()),

                      Container(
                        height: 355,
                        child: ListView(
                          children: <Widget>[
                            Container(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.fromLTRB(
                                    0, SizeConfig.blockSizeVertical * 6, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    DragLetter(
                                      'ن',
                                      Offset(25, 0),
                                    ),
                                    DragLetter(
                                      'ب',
                                      Offset(45, 0),
                                    ),
                                    DragLetter(
                                      'أ',
                                      Offset(65, 0),
                                    ),
                                    DragLetter(
                                      'ر',
                                      Offset(75, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical * 15,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 4,
                                    0,
                                    SizeConfig.blockSizeHorizontal * 4,
                                    0),
                                child: Stack(children: [
                                  Divider(
                                    thickness: 1.5,
                                  ),
                                  // Container(
                                  //   width: MediaQuery.of(context).size.width,
                                  //   margin: EdgeInsets.fromLTRB(
                                  //       0, SizeConfig.blockSizeVertical * 6, 0, 0),
                                  //   child: Row(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.spaceEvenly,
                                  //     children: <Widget>[DropLetter()],
                                  //   ),
                                  //),
                                ]))
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 20,
                            right: SizeConfig.blockSizeHorizontal * 2),
                        child: Material(
                            color: Colors.lightGreen[800],
                            borderRadius: BorderRadius.circular(25),
                            child: MaterialButton(
                              height: SizeConfig.blockSizeVertical * 3,
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.blockSizeHorizontal * 17,
                                  SizeConfig.blockSizeVertical,
                                  SizeConfig.blockSizeHorizontal * 17,
                                  SizeConfig.blockSizeVertical),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => App())
                                    // AlefMic())
                                    );
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ]))));
  }
}

class DragLetter extends StatefulWidget {
  final String label;
  final Offset initPos;

  // final Offset initPos;

  DragLetter(this.label, this.initPos);
  @override
  _DragLetterState createState() => _DragLetterState();
}

class _DragLetterState extends State<DragLetter> {
  Offset position = Offset(0.0, 0.0);
  bool successfulDrop;

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Draggable<Container>(
      data: Container(),
      child: Container(
        margin: EdgeInsets.only(
            left: SizeConfig.blockSizeHorizontal,
            right: SizeConfig.blockSizeHorizontal),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[400],
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            child: MaterialButton(
              minWidth: SizeConfig.blockSizeHorizontal * 5,
              height: SizeConfig.blockSizeVertical * 8,
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.blockSizeHorizontal * 7,
                  SizeConfig.blockSizeVertical * 1,
                  SizeConfig.blockSizeHorizontal * 7,
                  SizeConfig.blockSizeVertical * 1),
              onPressed: () {},
              child: Text(
                widget.label,
                style:
                    TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 7.5),
              ),
            )),
      ),
      onDraggableCanceled: (velocity, offset) {
        setState(() {
          position = offset;
        });
      },
      feedback: Container(
        margin: EdgeInsets.only(
            left: SizeConfig.blockSizeHorizontal,
            right: SizeConfig.blockSizeHorizontal),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[400],
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            child: MaterialButton(
              minWidth: SizeConfig.blockSizeHorizontal * 5,
              height: SizeConfig.blockSizeVertical * 8,
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.blockSizeHorizontal * 7,
                  SizeConfig.blockSizeVertical * 1,
                  SizeConfig.blockSizeHorizontal * 7,
                  SizeConfig.blockSizeVertical * 1),
              onPressed: () {},
              child: Text(
                widget.label,
                style:
                    TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 7.5),
              ),
            )),
      ),
      childWhenDragging: Container(),
    ));
  }
}

class DropLetter extends StatefulWidget {
  @override
  _DropLetterState createState() => _DropLetterState();
}

class _DropLetterState extends State<DropLetter> {
  bool successfulDrop;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (BuildContext context, List<Container> incoming, List rejected) {
        if (successfulDrop == true) {
          return Text('Dropped!');
        } else {
          return Text('Empty dropzone');
        }
      },
      onWillAccept: (data) => data == 'GOOD',
      onAccept: (data) {
        setState(() {
          successfulDrop = true;
        });
      },
      onLeave: (data) {},
    );
  }
}
