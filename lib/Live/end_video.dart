import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/ahmad_shaweesh.dart';
import 'package:sebawayh/main.dart';

class EndCall extends StatelessWidget {
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
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 13),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/end.png'),
                    height: SizeConfig.blockSizeVertical * 20,
                    width: SizeConfig.blockSizeHorizontal * 40,
                    fit: BoxFit.fill,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 3),
                      child: Text('Video call ended',
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: SizeConfig.safeBlockHorizontal * 7))),
                  Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 3),
                      child: Text('01:15:12',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6.5))),
                  SizedBox(height: SizeConfig.blockSizeVertical * 10),
                  Container(
                      child: Text(
                    'Please rate the teacher',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        color: Colors.grey[700]),
                  )),
                  Container(
                    margin: EdgeInsets.only(
                        // left: SizeConfig.blockSizeHorizontal * 17,
                        top: SizeConfig.blockSizeVertical * 1),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: SizeConfig.blockSizeHorizontal * 25),
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
                          left: SizeConfig.blockSizeHorizontal * 11,
                          right: SizeConfig.blockSizeHorizontal * 11,
                          top: SizeConfig.blockSizeVertical * 2),
                      width: MediaQuery.of(context).size.width,
                      height: SizeConfig.blockSizeVertical * 15,
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
                                left: SizeConfig.blockSizeHorizontal * 3),
                            hintStyle: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
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
                          height: SizeConfig.blockSizeVertical * 4,
                          //  minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 35,
                              SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeHorizontal * 35,
                              SizeConfig.blockSizeVertical),
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AhmadShaweesh()));
                          },
                          child: Text(
                            "DONE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockHorizontal * 4),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ],
              ))),
    ));
  }
}
