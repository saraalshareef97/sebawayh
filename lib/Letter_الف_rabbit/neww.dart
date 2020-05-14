import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:painter/painter.dart';
import 'dart:typed_data';

import 'package:sebawayh/main.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => new _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  bool _finished;
  PainterController _controller;

  @override
  void initState() {
    super.initState();
    _finished = false;
    _controller = _newController();
  }

  PainterController _newController() {
    PainterController controller = new PainterController();
    controller.thickness = 3;
    controller.backgroundColor = Colors.white;
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    //List<Widget> actions;
    // if (_finished) {
    //   actions = <Widget>[
    //     new IconButton(
    //       icon: new Icon(Icons.content_copy),
    //       tooltip: 'New Painting',
    //       onPressed: () => setState(() {
    //         _finished = false;
    //         _controller = _newController();
    //       }),
    //     ),
    //   ];
    // } else {
    //   actions = <Widget>[
    //     new IconButton(
    //         icon: new Icon(Icons.undo),
    //         tooltip: 'Undo',
    //         onPressed: _controller.undo),
    //     new IconButton(
    //         icon: new Icon(Icons.delete),
    //         tooltip: 'Clear',
    //         onPressed: _controller.clear),
    //     new IconButton(
    //         icon: new Icon(Icons.check),
    //         onPressed: () => _show(_controller.finish(), context)),
    //   ];
    // }
    return MaterialApp(
      home: new Scaffold(
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 2.5,
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
                              size: SizeConfig.blockSizeVertical * 4,
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
                                height: SizeConfig.blockSizeVertical * 2,
                                width: SizeConfig.blockSizeHorizontal * 17,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen[800],
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2),
                      child: RichText(
                        text: TextSpan(
                            text: 'Write "',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Alef ',
                                  style: TextStyle(
                                    color: Colors.lightGreen[800],
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5.5,
                                  )),
                              TextSpan(
                                  text: '". ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5.5,
                                  )),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 5,
                      color: Colors.white,
                      child: Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 3),
                          alignment: Alignment.center,
                          height: SizeConfig.blockSizeVertical * 50,
                          width: SizeConfig.blockSizeHorizontal * 100,
                          child: new AspectRatio(
                              aspectRatio: 1.0,
                              child: new Painter(_controller))),
                    ),

                    // Container(
                    //     margin: EdgeInsets.only(top: 20),
                    //     height: SizeConfig.blockSizeVertical * 50,
                    //     width: SizeConfig.blockSizeHorizontal * 100,
                    //     child: Card(
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(15.0)),
                    //       elevation: 5,
                    //       color: Colors.white,
                    //     )),
                  ]))
          // appBar: new AppBar(
          //     title: const Text('Painter Example'),
          //     // actions: actions,
          //     bottom: new PreferredSize(
          //       child: new DrawBar(_controller),
          //       preferredSize: new Size(MediaQuery.of(context).size.width, 30.0),
          //     )),
          // body: new Center(
          //     child: new AspectRatio(
          //         aspectRatio: 1.0, child: new Painter(_controller))),
          ),
    );
  }
}
