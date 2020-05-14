import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/next_rabbit.dart';
import 'package:sebawayh/main.dart';

class Rabbit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 2,
                    left: SizeConfig.blockSizeHorizontal * 3,
                    right: SizeConfig.blockSizeHorizontal * 3),
                // color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: SizeConfig.blockSizeVertical * 2,
                                  width: SizeConfig.blockSizeHorizontal * 80,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[100],
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0, 0, SizeConfig.blockSizeHorizontal, 0),
                                  height: SizeConfig.blockSizeVertical * 2,
                                  width: SizeConfig.blockSizeHorizontal * 15,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[800],
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      Container(
                          margin: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal,
                              top: SizeConfig.blockSizeVertical),
                          child: Stack(children: [
                            CircleAvatar(
                              backgroundColor: Colors.lightGreen[800],
                              radius: 19,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 6, top: 6),
                              child: Icon(
                                Icons.volume_up,
                                color: Colors.white,
                                size: SizeConfig.blockSizeVertical * 3,
                              ),
                            ),
                          ])),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 4),
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('images/rabbit2.png'),
                            fit: BoxFit.fill,
                          )),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 4),
                          child: Image(
                              image: AssetImage('images/Arrnab.png'),
                              fit: BoxFit.fill,
                              height: SizeConfig.blockSizeVertical * 6,
                              width: SizeConfig.blockSizeHorizontal * 19)),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 4),
                          child: Text(
                            'Arnab',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 6),
                          )),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 4),
                          child: Text(
                            'Rabbit',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 6),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 4,
                            left: SizeConfig.blockSizeHorizontal * 4,
                            right: SizeConfig.blockSizeHorizontal * 5),
                        alignment: Alignment.center,
                        child: Material(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.lightGreen[800],
                            child: MaterialButton(
                              height: SizeConfig.blockSizeVertical * 3,
                              minWidth: MediaQuery.of(context).size.width,
                              // padding:
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => NextRabbit()));
                              },
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ]))));
  }
}
