import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/StartingPages/p2.dart';
import 'package:sebawayh/main.dart';

class P1 extends StatelessWidget {
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.white,
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 37,
              height: SizeConfig.safeBlockHorizontal * 42,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => P2()));
                  },
                  child: Image(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fill,
                  )),
            )));
  }
}
