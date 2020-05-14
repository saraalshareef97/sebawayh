import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/chatting_page.dart';
import 'package:sebawayh/Live/video.dart';
import 'package:sebawayh/main.dart';

class ChatOrVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal,
                  top: SizeConfig.blockSizeVertical * 3.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => Chat()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 8),
                      alignment: Alignment.center,
                      child: Stack(
                        children: <Widget>[
                          Image(image: AssetImage('images/Ellipse74.png')),
                          Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 18,
                                  top: SizeConfig.blockSizeVertical * 8),
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage('images/chat.png'),
                                    fit: BoxFit.fill,
                                    height: SizeConfig.blockSizeVertical * 15,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              SizeConfig.blockSizeVertical * 2),
                                      child: Text('Chat',
                                          style: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  7)))
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => Video()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 3),
                      alignment: Alignment.center,
                      child: Stack(
                        children: <Widget>[
                          Image(image: AssetImage('images/Ellipse74.png')),
                          Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeHorizontal * 19,
                                  top: SizeConfig.blockSizeVertical * 10),
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image:
                                        AssetImage('images/video-camera.png'),
                                    fit: BoxFit.fill,
                                    height: SizeConfig.blockSizeVertical * 10,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              SizeConfig.blockSizeVertical * 3),
                                      child: Text('Video call',
                                          style: TextStyle(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  7)))
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
