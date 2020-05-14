import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/bottomNavBar.dart';
import 'package:sebawayh/main.dart';

class P5 extends StatelessWidget {
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
                        fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 7),
                Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreen[800],
                    child: MaterialButton(
                      height: SizeConfig.blockSizeVertical * 4,
                      //  minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 18,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 18,
                        SizeConfig.blockSizeVertical,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    BottomNavigationBarController()));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.safeBlockHorizontal * 4.8),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
