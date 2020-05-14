import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Failed.dart';
import 'package:sebawayh/main.dart';

class Passed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockSizeVertical * 15,
            ),
            YouPassed(),
            SizedBox(height: SizeConfig.blockSizeVertical * 25),
            Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.lightGreen[800],
                child: MaterialButton(
                  height: SizeConfig.blockSizeVertical * 5,
                  //  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 12,
                    SizeConfig.blockSizeVertical,
                    SizeConfig.blockSizeHorizontal * 12,
                    SizeConfig.blockSizeVertical,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Failed()));
                  },
                  child: Text(
                    "Download Ceretificat",
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
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            // height: 200,
            // width: 200,
            child: Icon(
              Icons.check_circle_outline,
              color: Colors.greenAccent[400],
              size: 200,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            '9/10',
            style: TextStyle(fontSize: 40, color: Colors.greenAccent[400]),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'You Passed',
            style: TextStyle(fontSize: 30, color: Colors.greenAccent[400]),
          ),
        ],
      ),
    );
  }
}
