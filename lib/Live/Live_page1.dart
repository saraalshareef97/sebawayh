import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/completed.dart';
import 'package:sebawayh/main.dart';

class LivePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(children: [
                  Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 0.5),
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        iconSize: SizeConfig.blockSizeVertical * 2,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 1.5,
                        right: SizeConfig.blockSizeHorizontal * 4),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: '1) What is the diacritics in " ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'أ',
                                style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                            TextSpan(
                                text: ' "?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                          ]),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                  Diacritics(),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 1.5,
                        right: SizeConfig.blockSizeHorizontal * 4),
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 3),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: '2) What is the diacritics in " ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'أ',
                                style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                            TextSpan(
                                text: ' "?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                          ]),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                  Diacritics(),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 1.5,
                        right: SizeConfig.blockSizeHorizontal * 4),
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 3),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: '3) What is the diacritics in " ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'أ',
                                style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                            TextSpan(
                                text: ' "?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                          ]),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                  Diacritics(),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 1.5,
                        right: SizeConfig.blockSizeHorizontal * 4),
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4,
                        top: SizeConfig.blockSizeVertical * 3),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: '4) What is the diacritics in " ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'أ',
                                style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                            TextSpan(
                                text: ' "?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                          ]),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                  Diacritics(),
                  SizedBox(height: SizeConfig.blockSizeVertical * 6),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 8,
                        right: SizeConfig.blockSizeHorizontal * 8),
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightGreen[800],
                        child: MaterialButton(
                          height: SizeConfig.blockSizeVertical * 4,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 5,
                              SizeConfig.blockSizeVertical * 1.5,
                              SizeConfig.blockSizeHorizontal * 5,
                              SizeConfig.blockSizeVertical * 1.5),
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Completed()));
                          },
                          child: Text(
                            "FINISH",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ]))));
  }
}

class Diacritics extends StatefulWidget {
  Diacritics({Key key}) : super(key: key);

  @override
  _DiacriticsState createState() => _DiacriticsState();
}

class _DiacriticsState extends State<Diacritics> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 4, 0,
          SizeConfig.blockSizeHorizontal * 4, 0),
      margin: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 5,
          right: SizeConfig.blockSizeHorizontal * 5),
      width: MediaQuery.of(context).size.width,
      height: SizeConfig.blockSizeVertical * 5,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(),
        items: [
          DropdownMenuItem<String>(
            child: Text(
              'فتحة',
              style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                  fontWeight: FontWeight.bold),
            ),
            value: 'one',
          ),
          DropdownMenuItem<String>(
            child: Text(
              'ضمة',
              style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                  fontWeight: FontWeight.bold),
            ),
            value: 'two',
          ),
          DropdownMenuItem<String>(
            child: Text(
              'كسرة',
              style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                  fontWeight: FontWeight.bold),
            ),
            value: 'three',
          ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text(
          'Choose the correct answer',
          style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
          ),
        ),
        iconSize: SizeConfig.blockSizeVertical * 4.5,
        value: _value,
      ),
    );
  }
}
