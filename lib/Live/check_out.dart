import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/chat_video.dart';
import 'package:sebawayh/main.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal,
                            top: SizeConfig.blockSizeVertical * 1.5),
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                          iconSize: SizeConfig.blockSizeVertical * 2,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )),
                    Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 5,
                            top: SizeConfig.blockSizeVertical),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Check out',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 9,
                            SizeConfig.blockSizeVertical * 4,
                            SizeConfig.blockSizeHorizontal * 9,
                            0),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Card number',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.black),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: '85897456885478822',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 5),
                              Text(
                                'Card holder',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.black),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: 'Ahmad shaweesh ',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Expiration date',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    4,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 30,
                                        child: TextField(
                                          cursorColor: Colors.grey,
                                          decoration: InputDecoration(
                                              hintText: '12 / 20',
                                              alignLabelWithHint: true,
                                              hintStyle: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      3),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.lightGreen[
                                                                  800]))),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'CVV',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    4,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 30,
                                        child: TextField(
                                          cursorColor: Colors.grey,
                                          decoration: InputDecoration(
                                              hintText: '465',
                                              alignLabelWithHint: true,
                                              hintStyle: TextStyle(
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      3),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.lightGreen[
                                                                  800]))),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 5),
                              Container(
                                  child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_box_outline_blank,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal * 2),
                                  Text(
                                    'Save Card',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 4,
                                        color: Colors.black),
                                  )
                                ],
                              )),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 9,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 4,
                                    0,
                                    SizeConfig.blockSizeHorizontal * 4,
                                    0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      'Or',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4),
                                    ),
                                    SizedBox(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 2),
                                    Image(
                                        image: AssetImage('images/payPal.png'))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 9,
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Material(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.lightGreen[800],
                                    child: MaterialButton(
                                      height: SizeConfig.blockSizeVertical * 6,
                                      //  minWidth: MediaQuery.of(context).size.width,
                                      padding: EdgeInsets.fromLTRB(
                                          SizeConfig.blockSizeHorizontal * 17,
                                          SizeConfig.blockSizeVertical,
                                          SizeConfig.blockSizeHorizontal * 17,
                                          SizeConfig.blockSizeVertical),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    ChatOrVideo()));
                                      },
                                      child: Text(
                                        "PAY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    4),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ))
                  ],
                ))));
  }
}
