import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Level_1_Test2.dart';
import 'package:sebawayh/Level_1_Test3.dart';
import 'package:sebawayh/main.dart';

class CorrectTest2 extends StatelessWidget {
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
            Opacity(opacity: 0.3, child: Level1Test2()),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 65),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.check,
                    size: SizeConfig.blockSizeVertical * 17,
                    color: Colors.white,
                  ),
                  Text(
                    'Right!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 8.5),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5),
                  Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 5,
                        //  minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 20,
                            SizeConfig.blockSizeVertical,
                            SizeConfig.blockSizeHorizontal * 20,
                            SizeConfig.blockSizeVertical),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Level1Test3()));
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
