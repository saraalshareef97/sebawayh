import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/ahmad_shaweesh.dart';
import 'package:sebawayh/main.dart';

class CompletedLvl1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 13,
                  right: SizeConfig.blockSizeHorizontal * 6,
                  left: SizeConfig.blockSizeHorizontal * 6),
              child: Column(
                children: <Widget>[
                  Container(
                    // height: 200,
                    // width: 200,
                    child: Icon(
                      Icons.check_circle_outline,
                      color: Colors.greenAccent[400],
                      size: SizeConfig.blockSizeVertical * 26,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 2),
                      child: Text('Level 1',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6))),
                  Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 0.8),
                      child: Text('Completed',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6))),
                  SizedBox(height: SizeConfig.blockSizeVertical * 6),
                  Container(
                      child: Text(
                    'Please rate the level',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 6,
                        color: Colors.grey[700]),
                  )),
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: SizeConfig.blockSizeHorizontal * 20),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.grey,
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.grey,
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 4,
                          right: SizeConfig.blockSizeHorizontal * 4,
                          top: SizeConfig.blockSizeVertical * 3),
                      width: MediaQuery.of(context).size.width,
                      height: 125,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            disabledBorder: InputBorder.none,
                            enabled: false,
                            hintText: 'Feedback',
                            contentPadding: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 4),
                            hintStyle: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                                color: Colors.grey[400]),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none),
                      )),
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightGreen[800],
                        child: MaterialButton(
                          height: SizeConfig.blockSizeVertical * 5.5,
                          //  minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 33,
                              SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeHorizontal * 33,
                              SizeConfig.blockSizeVertical),
                          onPressed: () {},
                          child: Text(
                            "DONE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ],
              ))),
    ));
  }
}
