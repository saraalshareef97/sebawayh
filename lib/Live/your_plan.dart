import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Failed.dart';
import 'package:sebawayh/Live/payment_successful.dart';
import 'package:sebawayh/main.dart';

class YourPlan extends StatelessWidget {
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
                margin:
                    EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2.5),
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: SizeConfig.blockSizeVertical * 2,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ))),
            SizedBox(height: SizeConfig.blockSizeVertical * 1),
            Container(
                margin:
                    EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
                alignment: Alignment.topLeft,
                child: Text(
                  'Choose your plan',
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 6),
                )),
            SizedBox(height: SizeConfig.blockSizeVertical * 5.5),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 1.5,
                  right: SizeConfig.blockSizeHorizontal * 2.5),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.circle,
                            color: Colors.lightGreen[800],
                            size: SizeConfig.blockSizeVertical * 3.6,
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 1.6,
                              left: SizeConfig.blockSizeHorizontal * 3),
                          child: Icon(
                            Icons.brightness_1,
                            color: Colors.lightGreen[800],
                          ))
                    ],
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 6,
                        right: SizeConfig.blockSizeHorizontal * 1.5),
                    height: SizeConfig.blockSizeVertical * 6,
                    width: SizeConfig.blockSizeHorizontal * 75,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen[800],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 0.2,
                              spreadRadius:
                                  0.1 // has the effect of softening the shadow
                              // has the effect of extending the shadow
                              )
                        ],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '#10 per user/month',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white,
                          size: SizeConfig.blockSizeVertical * 4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 17,
                    top: SizeConfig.blockSizeVertical * 3),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.check,
                          size: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 2,
                        ),
                        Text(
                          '2 hours/day',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.4),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.check,
                          size: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 2,
                        ),
                        Text(
                          '5 days/week',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.4),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 1.5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.check,
                          size: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 2,
                        ),
                        Text(
                          '1 month',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.4),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 5,
                    right: SizeConfig.blockSizeHorizontal * 5),
                child: Divider(
                  color: Colors.grey,
                  thickness: SizeConfig.blockSizeVertical * 0.2,
                )),
            SizedBox(height: SizeConfig.blockSizeVertical * 3),
            Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 1.5),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.circle,
                          color: Colors.grey[200],
                          size: SizeConfig.blockSizeVertical * 3.8)),
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 6,
                        right: SizeConfig.blockSizeHorizontal * 1.5),
                    height: SizeConfig.blockSizeVertical * 6,
                    width: SizeConfig.blockSizeHorizontal * 75,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 0.2,
                              spreadRadius:
                                  0.1 // has the effect of softening the shadow
                              // has the effect of extending the shadow
                              )
                        ],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '#20 per user/month',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.black,
                          size: SizeConfig.blockSizeVertical * 4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 3),
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 5,
                    right: SizeConfig.blockSizeHorizontal * 5),
                child: Divider(
                    color: Colors.grey,
                    thickness: SizeConfig.blockSizeVertical * 0.2)),
            SizedBox(height: SizeConfig.blockSizeVertical * 3),
            Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 1.5),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.circle,
                        color: Colors.grey[200],
                        size: SizeConfig.blockSizeVertical * 3.8,
                      )),
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 5,
                        right: SizeConfig.blockSizeHorizontal * 1.5),
                    height: SizeConfig.blockSizeVertical * 6,
                    width: SizeConfig.blockSizeHorizontal * 75,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 0.2,
                              spreadRadius:
                                  0.1 // has the effect of softening the shadow
                              // has the effect of extending the shadow
                              )
                        ],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '#30 per user/month',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.black,
                          size: SizeConfig.blockSizeVertical * 4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 12),
            Container(
              margin:
                  EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 4),
              alignment: Alignment.bottomRight,
              child: Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightGreen[800],
                  child: MaterialButton(
                    height: SizeConfig.blockSizeVertical * 5,
                    //  minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => PaymentSuccess()));
                    },
                    child: Text(
                      "SUBSCRIBE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 4),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
