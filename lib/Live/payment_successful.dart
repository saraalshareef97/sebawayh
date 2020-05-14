import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/available_teachers.dart';
import 'package:sebawayh/main.dart';

class PaymentSuccess extends StatelessWidget {
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
                    left: SizeConfig.blockSizeHorizontal * .05,
                    top: SizeConfig.blockSizeVertical * 2.5),
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ))),
            SizedBox(height: SizeConfig.blockSizeVertical * 17),
            YouPassed(),
            SizedBox(height: SizeConfig.blockSizeVertical * 18),
            Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.lightGreen[800],
                child: MaterialButton(
                  height: SizeConfig.blockSizeVertical * 4,
                  //  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(150.0, 10.0, 150.0, 10.0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => AvailableTeacher()));
                  },
                  child: Text(
                    "GO",
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
            height: SizeConfig.blockSizeVertical * 25,
            width: SizeConfig.blockSizeHorizontal * 50,
            child: Icon(
              Icons.check_circle_outline,
              color: Colors.greenAccent[400],
              size: SizeConfig.blockSizeVertical * 25,
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Text(
            'Payment',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 7,
                color: Colors.black),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 0.5,
          ),
          Text(
            'successful',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 7,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
