import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/arrange_letters.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/new_drop.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/next_rabbit.dart';
import 'package:sebawayh/main.dart';

class CorrectRabbit1 extends StatelessWidget {
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
                  height: SizeConfig.blockSizeVertical * 5,
                  color: Colors.lightGreen[800],
                ),
                NextRabbit()
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.greenAccent[400],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 65),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.check,
                  size: SizeConfig.blockSizeVertical * 12,
                  color: Colors.white,
                ),
                Text(
                  'Right!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal * 8),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 4),
                Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    child: MaterialButton(
                      height: SizeConfig.blockSizeVertical *
                          4, //  minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 18,
                          SizeConfig.blockSizeVertical,
                          SizeConfig.blockSizeHorizontal * 18,
                          SizeConfig.blockSizeVertical),
                      onPressed: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => App()));
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
