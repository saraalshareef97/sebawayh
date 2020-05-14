import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Alef.dart';
import 'package:sebawayh/Letter_%D8%A7%D9%84%D9%81_rabbit/rabbit.dart';
import 'package:sebawayh/main.dart';

class ArabicWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: SizeConfig.blockSizeVertical * 2,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 5,
                          top: SizeConfig.blockSizeVertical * 0.3),
                      child: RichText(
                          text: TextSpan(
                              text: 'Level 2 ',
                              style: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                  color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                                text: '(words) ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                )),
                          ])),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2,
                          right: SizeConfig.blockSizeHorizontal * 2),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 12,
                                    SizeConfig.blockSizeVertical * 1.5,
                                    SizeConfig.blockSizeHorizontal * 12,
                                    SizeConfig.blockSizeVertical * 1.5,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => Rabbit()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/rabbit.png',
                                            ),
                                            fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'أرنب',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5,
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5),
                                  onPressed: () {},
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/lion.png',
                                            ),
                                            // fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'أسد',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2,
                          right: SizeConfig.blockSizeHorizontal * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5,
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5),
                                  onPressed: () {},
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/apple.jpg',
                                            ),
                                            //fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'تفاحة',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5,
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5),
                                  onPressed: () {},
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  16,
                                          child: Image(
                                            image: AssetImage(
                                              'images/duck.jpg',
                                            ),
                                            //fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'بطة',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2,
                          right: SizeConfig.blockSizeHorizontal * 2),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 12,
                                    SizeConfig.blockSizeVertical * 1.5,
                                    SizeConfig.blockSizeHorizontal * 12,
                                    SizeConfig.blockSizeVertical * 1.5,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => Rabbit()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/banana.png',
                                            ),
                                            fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'موز',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5,
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5),
                                  onPressed: () {},
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/strawberry(1).png',
                                            ),
                                            // fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'فراولة',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2,
                          right: SizeConfig.blockSizeHorizontal * 2),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 12,
                                    SizeConfig.blockSizeVertical * 1.5,
                                    SizeConfig.blockSizeHorizontal * 12,
                                    SizeConfig.blockSizeVertical * 1.5,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => Rabbit()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/rabbit.png',
                                            ),
                                            fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                          height: SizeConfig.blockSizeVertical),
                                      Text(
                                        'أرنب',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 5,
                              color: Colors.white,
                              child: MaterialButton(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5,
                                      SizeConfig.blockSizeHorizontal * 12,
                                      SizeConfig.blockSizeVertical * 1.5),
                                  onPressed: () {},
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height:
                                              SizeConfig.blockSizeVertical * 9,
                                          width:
                                              SizeConfig.blockSizeHorizontal *
                                                  17,
                                          child: Image(
                                            image: AssetImage(
                                              'images/lion.png',
                                            ),
                                            // fit: BoxFit.fill,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'أسد',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    7),
                                      )
                                    ],
                                  ))),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
