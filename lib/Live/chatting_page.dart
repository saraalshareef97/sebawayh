import 'package:flutter/material.dart';
import 'package:sebawayh/main.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
          body: Container(
              child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 17,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: SizeConfig.blockSizeVertical * 0.5),
                height: SizeConfig.blockSizeVertical * 5,
                width: SizeConfig.blockSizeHorizontal * 40,
                decoration: BoxDecoration(
                    color: Colors.lightGreen[800],
                    border: Border.all(color: Colors.lightGreen[800]),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  '01:15:12',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 5,
                top: SizeConfig.blockSizeVertical * 4),
            child: Text(
              'Chat',
              style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 6),
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Container(
            alignment: Alignment.center,
            child: Text(
              '_____   23/11/2019   _____',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: SizeConfig.safeBlockHorizontal * 4),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeVertical * 4),
            child: Row(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey[50],
                        radius: 35,
                      ),
                      Container(
                        //alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 1, left: 18),
                        child: Image(image: AssetImage('images/maan.png')),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 25, top: 25, right: 15),
                    height: SizeConfig.blockSizeVertical * 12.5,
                    width: SizeConfig.blockSizeHorizontal * 60,
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 2),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesettings industry',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: SizeConfig.safeBlockHorizontal * 3.4),
                    ))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 23, top: 5),
              child: Text(
                '7:30 pm',
                style: TextStyle(color: Colors.grey),
              )),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Container(
              padding: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 5,
                  top: SizeConfig.blockSizeVertical * 3,
                  right: SizeConfig.blockSizeHorizontal * 2),
              height: SizeConfig.blockSizeVertical * 12, // width: 100,
              margin: EdgeInsets.only(left: 140, right: 25),
              decoration: BoxDecoration(
                  color: Colors.lightGreen[800],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesettings industry',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.safeBlockHorizontal * 3.4),
              )),
          Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical,
                  right: SizeConfig.blockSizeHorizontal * 5.5),
              child: Text(
                '7:30 pm',
                style: TextStyle(color: Colors.grey),
              )),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Container(
            alignment: Alignment.center,
            child: Text(
              '_____   25/11/2019   _____',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: SizeConfig.safeBlockHorizontal * 4),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeVertical * 4),
            child: Row(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey[50],
                        radius: 35,
                      ),
                      Container(
                        //alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 1, left: 18),
                        child: Image(image: AssetImage('images/maan.png')),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 25, top: 25, right: 15),
                    height: SizeConfig.blockSizeVertical * 12.5,
                    width: SizeConfig.blockSizeHorizontal * 60,
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 2),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesettings industry',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: SizeConfig.safeBlockHorizontal * 3.4),
                    ))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 100, top: 5),
              child: Text(
                '7:30 pm',
                style: TextStyle(color: Colors.grey),
              )),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Container(
              padding: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 5,
                  top: SizeConfig.blockSizeVertical * 3,
                  right: SizeConfig.blockSizeHorizontal * 2),
              height: SizeConfig.blockSizeVertical * 12, // width: 100,
              margin: EdgeInsets.only(left: 140, right: 25),
              decoration: BoxDecoration(
                  color: Colors.lightGreen[800],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesettings industry',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.safeBlockHorizontal * 3.4),
              )),
          Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical,
                  right: SizeConfig.blockSizeHorizontal * 5.5),
              child: Text(
                '7:30 pm',
                style: TextStyle(color: Colors.grey),
              )),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Container(
              margin: EdgeInsets.only(
                  bottom: SizeConfig.blockSizeVertical * 3,
                  left: SizeConfig.blockSizeHorizontal * 4,
                  right: SizeConfig.blockSizeHorizontal * 4),
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: SizeConfig.blockSizeVertical * 6,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Opacity(
                      opacity: 0.6,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 6),
                        width: SizeConfig.blockSizeHorizontal * 72,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                  size: SizeConfig.blockSizeVertical * 4,
                                ),
                                onPressed: () {},
                              ),
                              hintText: 'Type here',
                              hintStyle: TextStyle(
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 4.5,
                                  color: Colors.grey),
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: SizeConfig.blockSizeHorizontal * 3),
                      //width: 0,
                      child: Icon(
                        Icons.send,
                        color: Colors.lightGreen[800],
                        size: SizeConfig.blockSizeVertical * 4,
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.only(
                bottom: SizeConfig.blockSizeVertical * 3,
                left: SizeConfig.blockSizeHorizontal * 4,
                right: SizeConfig.blockSizeHorizontal * 4),
            child: Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red,
                child: MaterialButton(
                  height: SizeConfig.blockSizeVertical * 5,
                  //  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 1.5,
                      SizeConfig.blockSizeVertical,
                      SizeConfig.blockSizeHorizontal * 1.5,
                      SizeConfig.blockSizeVertical),
                  onPressed: () {},
                  child: Text(
                    "End Chat",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.safeBlockHorizontal * 5),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ))),
    );
  }
}
