import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/check_out.dart';
import 'package:sebawayh/main.dart';

class Done extends StatelessWidget {
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
                    left: SizeConfig.blockSizeHorizontal,
                    top: SizeConfig.blockSizeVertical * 3),
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ))),
            SizedBox(height: SizeConfig.blockSizeVertical * 12),
            YouPassed(),
            SizedBox(height: SizeConfig.blockSizeVertical * 15),
            Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.lightGreen[800],
                child: MaterialButton(
                  height: SizeConfig.blockSizeVertical *
                      6, //  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 35,
                      SizeConfig.blockSizeVertical,
                      SizeConfig.blockSizeHorizontal * 35,
                      SizeConfig.blockSizeVertical),
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => CheckOut()));
                  },
                  child: Text(
                    "START",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 5),
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
            height: SizeConfig.blockSizeVertical * 25,
            width: SizeConfig.blockSizeHorizontal * 47,
            child: Icon(
              Icons.check_circle_outline,
              color: Colors.greenAccent[400],
              size: SizeConfig.blockSizeVertical * 25,
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Text(
            'Done',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 7,
                color: Colors.black),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 5),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical * 9, 0,
                SizeConfig.blockSizeVertical * 9, 0),
            child: Text(
              'Your classes time have been reserved You will notified before class will started',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 3.8,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
