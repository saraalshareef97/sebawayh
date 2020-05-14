import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/end_video.dart';
import 'package:sebawayh/main.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Stack(
      children: <Widget>[
        Image(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
          image: AssetImage('images/3.png'),
        ),
        Container(
            margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical,
              right: SizeConfig.blockSizeHorizontal * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 27,
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: SizeConfig.blockSizeHorizontal * 5,
                      bottom: SizeConfig.blockSizeVertical * 6),
                  child: Text(
                    '01:15:12',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 6),
                  ),
                ),
                Image(image: AssetImage('images/15.png'))
              ],
            )),
        Container(
            margin: EdgeInsets.only(
                bottom: SizeConfig.blockSizeVertical * 11,
                left: SizeConfig.blockSizeHorizontal * 4.5,
                right: SizeConfig.blockSizeHorizontal * 4.5),
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.5,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[400],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2.5,
                            top: SizeConfig.blockSizeVertical * 1.2),
                        child: Icon(
                          Icons.videocam,
                          color: Colors.white,
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.5,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[400],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2.5,
                            top: SizeConfig.blockSizeVertical * 1.2),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.5,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[400],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2.5,
                            top: SizeConfig.blockSizeVertical * 1.2),
                        child: Icon(
                          Icons.switch_camera,
                          color: Colors.white,
                          size: SizeConfig.blockSizeVertical * 5,
                        ),
                      )
                    ],
                  ),
                  Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red,
                      child: MaterialButton(
                        height: 55,
                        //  minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 5,
                            SizeConfig.blockSizeVertical,
                            SizeConfig.blockSizeHorizontal * 5,
                            SizeConfig.blockSizeVertical),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => EndCall()));
                        },
                        child: Text(
                          "End Call",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ])),
        Container(
            margin: EdgeInsets.only(
                bottom: SizeConfig.blockSizeVertical * 3.5,
                left: SizeConfig.blockSizeHorizontal * 4,
                right: SizeConfig.blockSizeHorizontal * 4),
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: SizeConfig.blockSizeVertical * 5.5,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Opacity(
                    opacity: 0.6,
                    child: Container(
                      margin: EdgeInsets.only(left: 25),
                      width: SizeConfig.blockSizeHorizontal * 50,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            hintText: 'Type here',
                            hintStyle: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
                                color: Colors.grey[200]),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[200]))),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal * 2.5),
                    //width: 0,
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: SizeConfig.blockSizeVertical * 3.7,
                    ),
                  ),
                ],
              ),
            ))
      ],
    )));
  }
}
