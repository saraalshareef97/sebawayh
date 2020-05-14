import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/alef_mic.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/translate_sent.dart';
import 'package:sebawayh/main.dart';

class App2 extends StatefulWidget {
  @override
  App2State createState() => App2State();
}

class App2State extends State<App2> {
  Color caughtColor = Colors.grey;
  var accpeptedData = '';

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
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      size: SizeConfig.blockSizeVertical * 3,
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
                        width: SizeConfig.blockSizeHorizontal * 50,
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
                  top: SizeConfig.blockSizeVertical * 9,
                  right: 0),
              child: RichText(
                text: TextSpan(
                    text:
                        'Arrange the following words to be the correct sentence which means "  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'The boy went to school',
                          style: TextStyle(
                            color: Colors.lightGreen[800],
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                          )),
                      TextSpan(
                          text: '" ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                          )),
                    ]),
              ),
            ),
            DragBox(Offset(15.0, 230.0), 'ذهب', Colors.blueAccent),
            DragBox(Offset(95.0, 230.0), 'المدرسة', Colors.orange),
            DragBox(Offset(215.0, 230.0), 'إلى', Colors.lightGreen),
            DragBox(Offset(293.0, 230.0), 'الولد', Colors.lightGreen),
            Container(
                margin: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal,
                    SizeConfig.blockSizeVertical * 50,
                    SizeConfig.blockSizeHorizontal,
                    0),
                child: Stack(children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal,
                        SizeConfig.blockSizeVertical * 10,
                        SizeConfig.blockSizeHorizontal * 4,
                        0),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal,
                        0, SizeConfig.blockSizeHorizontal, 0),
                    height: SizeConfig.blockSizeHorizontal * 18,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DragTarget(
                          builder: (BuildContext context,
                                  List<dynamic> accepted,
                                  List<dynamic> rejected) =>
                              Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal,
                                right: SizeConfig.blockSizeHorizontal),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[400],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
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
                                    accpeptedData.toString(),
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5),
                                  ),
                                )),

                            //Center(
                            //   child: Text(accpeptedData.toString()),
                            // ),
                          ),
                          onAccept: (String data) {
                            accpeptedData = data;
                          },
                        ),
                        DragTarget(
                          builder: (BuildContext context,
                                  List<dynamic> accepted,
                                  List<dynamic> rejected) =>
                              Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal,
                                right: SizeConfig.blockSizeHorizontal),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[400],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                child: MaterialButton(
                                  minWidth: SizeConfig.blockSizeHorizontal * 4,
                                  height: SizeConfig.blockSizeVertical * 7,
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 5,
                                      SizeConfig.blockSizeVertical * 1,
                                      SizeConfig.blockSizeHorizontal * 5,
                                      SizeConfig.blockSizeVertical * 1),
                                  onPressed: () {},
                                  child: Text(
                                    accpeptedData.toString(),
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5),
                                  ),
                                )),
                          ),
                          onAccept: (String data) {
                            accpeptedData = data;
                          },
                        ),
                        DragTarget(
                          builder: (BuildContext context,
                                  List<dynamic> accepted,
                                  List<dynamic> rejected) =>
                              Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal,
                                right: SizeConfig.blockSizeHorizontal),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[400],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                child: MaterialButton(
                                  minWidth: SizeConfig.blockSizeHorizontal * 4,
                                  height: SizeConfig.blockSizeVertical * 7,
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 5,
                                      SizeConfig.blockSizeVertical * 1,
                                      SizeConfig.blockSizeHorizontal * 5,
                                      SizeConfig.blockSizeVertical * 1),
                                  onPressed: () {},
                                  child: Text(
                                    accpeptedData.toString(),
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5),
                                  ),
                                )),

                            //Center(
                            //   child: Text(accpeptedData.toString()),
                            // ),
                          ),
                          onAccept: (String data) {
                            accpeptedData = data;
                          },
                        ),
                        DragTarget(
                          builder: (BuildContext context,
                                  List<dynamic> accepted,
                                  List<dynamic> rejected) =>
                              Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal,
                                right: SizeConfig.blockSizeHorizontal),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[400],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                child: MaterialButton(
                                  minWidth: SizeConfig.blockSizeHorizontal * 4,
                                  height: SizeConfig.blockSizeVertical * 7,
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 5,
                                      SizeConfig.blockSizeVertical * 1,
                                      SizeConfig.blockSizeHorizontal * 5,
                                      SizeConfig.blockSizeVertical * 1),
                                  onPressed: () {},
                                  child: Text(
                                    accpeptedData.toString(),
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5),
                                  ),
                                )),

                            //Center(
                            //   child: Text(accpeptedData.toString()),
                            // ),
                          ),
                          onAccept: (String data) {
                            accpeptedData = data;
                          },
                        ),
                      ],
                    ),
                  ),
                ])),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                  bottom: SizeConfig.blockSizeVertical * 10,
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
                              builder: (context) => TranslateSentence()));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 5,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}

class DragBox extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;

  DragBox(this.initPos, this.label, this.itemColor);

  @override
  DragBoxState createState() => DragBoxState();
}

class DragBoxState extends State<DragBox> {
  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Draggable<String>(
        data: widget.label,
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
                minWidth: SizeConfig.blockSizeHorizontal * 4,
                height: SizeConfig.blockSizeVertical * 7,
                padding: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 5,
                    SizeConfig.blockSizeVertical * 1,
                    SizeConfig.blockSizeHorizontal * 5,
                    SizeConfig.blockSizeVertical * 1),
                onPressed: () {},
                child: Text(
                  widget.label,
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 6),
                ),
              )),
        ),
        // onDraggableCanceled: (velocity, offset) {
        //   setState(() {
        //     position = offset;
        //   });
        // },
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
                minWidth: SizeConfig.blockSizeHorizontal * 4,
                height: SizeConfig.blockSizeVertical * 7,
                padding: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 4,
                    SizeConfig.blockSizeVertical,
                    SizeConfig.blockSizeHorizontal * 4,
                    SizeConfig.blockSizeVertical),
                onPressed: () {},
                child: Text(
                  widget.label,
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
                ),
              )),
        ),
        childWhenDragging: Container(),
      ),
    );
  }
}
