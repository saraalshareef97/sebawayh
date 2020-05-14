import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Failed.dart';
import 'package:sebawayh/Live/your_plan.dart';
import 'package:sebawayh/main.dart';

class Completed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 1.5,
                    top: SizeConfig.blockSizeVertical * 3),
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: SizeConfig.blockSizeVertical * 2,
                    ))),
            SizedBox(height: SizeConfig.blockSizeVertical * 10),
            YouPassed(),
            SizedBox(height: SizeConfig.blockSizeVertical * 13),
            Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.lightGreen[800],
                child: MaterialButton(
                  height: SizeConfig.blockSizeVertical * 5,
                  //  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 25,
                      10.0,
                      SizeConfig.blockSizeHorizontal * 25,
                      10.0),
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => YourPlan()));
                  },
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 4),
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class YouPassed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.check_circle_outline,
              color: Colors.greenAccent[400],
              size: SizeConfig.blockSizeVertical * 25,
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 3.5,
          ),
          Text(
            'Completed',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 7,
                color: Colors.black),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 6),
          Text(
            'You are in',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 6,
                color: Colors.black),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3),
          Text(
            'Level 2',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 9,
                color: Colors.lightGreen[800]),
          ),
        ],
      ),
    );
  }
}
