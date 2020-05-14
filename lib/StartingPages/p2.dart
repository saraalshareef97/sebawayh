import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/StartingPages/p3.dart';
import 'package:sebawayh/main.dart';

class P2 extends StatelessWidget {
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.fromLTRB(
                SizeConfig.blockSizeHorizontal * 12,
                SizeConfig.blockSizeVertical * 68,
                SizeConfig.blockSizeHorizontal * 12,
                0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'There are many variations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: SizeConfig.safeBlockHorizontal * 6),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 3),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 3,
                      0,
                      SizeConfig.blockSizeHorizontal * 3,
                      0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typestting industy.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 0.5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.blockSizeHorizontal * 0.5),
                            height: SizeConfig.blockSizeVertical * 1.6,
                            width: SizeConfig.blockSizeHorizontal * 8.5,
                            decoration: BoxDecoration(
                                color: Colors.lightGreen[800],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Icon(
                            Icons.brightness_1,
                            color: Colors.lightGreen[800],
                            size: SizeConfig.blockSizeVertical * 1.9,
                          ),
                          SizedBox(width: SizeConfig.blockSizeHorizontal * 0.5),
                          Icon(
                            Icons.brightness_1,
                            color: Colors.lightGreen[800],
                            size: SizeConfig.blockSizeVertical * 1.9,
                          ),
                          SizedBox(width: SizeConfig.blockSizeHorizontal * 0.5),
                          Icon(
                            Icons.brightness_1,
                            color: Colors.lightGreen[800],
                            size: SizeConfig.blockSizeVertical * 1.9,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => P3()));
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.lightGreen[800],
                            fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
