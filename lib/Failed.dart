import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/completed.dart';
import 'package:sebawayh/completed_lvl1.dart';
import 'package:sebawayh/main.dart';

class Failed extends StatelessWidget {
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
            SizedBox(height: SizeConfig.blockSizeVertical * 15),
            YouFailed(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 25,
            ),
            Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.lightGreen[800],
                child: MaterialButton(
                  height: SizeConfig.blockSizeVertical * 5,
                  //  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 15,
                    SizeConfig.blockSizeVertical,
                    SizeConfig.blockSizeHorizontal * 15,
                    SizeConfig.blockSizeVertical,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => CompletedLvl1()));
                  },
                  child: Text(
                    "Retake the test",
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

class YouFailed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.highlight_off,
              color: Colors.red,
              size: 200,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            '5/10',
            style: TextStyle(fontSize: 40, color: Colors.red),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'You Failed',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
