import 'package:flutter/material.dart';
import 'package:sebawayh/main.dart';

class AhmadShaweesh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 15),
                    alignment: Alignment.center,
                    child: Column(children: [
                      Image(
                        image: AssetImage('images/logo.png'),
                        height: SizeConfig.blockSizeVertical * 23,
                        width: SizeConfig.blockSizeHorizontal * 38,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 11,
                      ),
                      Container(
                          child: Text(
                        'Ahmad Shaweesh',
                        style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 7,
                            fontWeight: FontWeight.bold),
                      )),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
                                color: Colors.grey),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 8),
                        child: Stack(
                          children: <Widget>[
                            Center(
                                child: Image(
                                    image: AssetImage('images/medal2.png'))),
                            Center(
                              child: Image(image: AssetImage('images/22.png')),
                            )
                          ],
                        ),
                      )
                    ])))));
  }
}
