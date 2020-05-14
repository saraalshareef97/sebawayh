import 'package:flutter/material.dart';
import 'package:sebawayh/main.dart';

class EditAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal),
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
                            left: SizeConfig.blockSizeHorizontal * 4,
                            top: SizeConfig.blockSizeVertical * 1),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Edit Account',
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                        )),
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 3,
                              ),
                              child: CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.blueGrey[100],
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 5),
                              alignment: Alignment.center,
                              child: Image(
                                image: AssetImage('images/man.png'),
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 14,
                                  left: SizeConfig.blockSizeHorizontal * 26.5),
                              alignment: Alignment.bottomCenter,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.lightGreen[800],
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 13,
                                  left: SizeConfig.blockSizeHorizontal * 26.5),
                              alignment: Alignment.bottomCenter,
                              child: IconButton(
                                icon: Icon(
                                  Icons.photo_camera,
                                  size: SizeConfig.blockSizeVertical * 2.5,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              )),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 6,
                            SizeConfig.blockSizeVertical * 3.5,
                            SizeConfig.blockSizeHorizontal * 6,
                            0),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Name',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.grey),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: 'Ahmad Shaweesh',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                4.3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              Text(
                                'Username',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.grey),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: 'ahmad',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                4.3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.grey),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: 'ashaweesh92@gmail.com',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                4.3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.grey),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: '**********',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                4.3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              Text(
                                'Age',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.grey),
                              ),
                              TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: '22',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                4.3),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightGreen[800]))),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Material(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.lightGreen[800],
                                    child: MaterialButton(
                                      height: SizeConfig.blockSizeVertical * 5,
                                      minWidth:
                                          SizeConfig.blockSizeHorizontal * 100,
                                      onPressed: () {},
                                      child: Text(
                                        "Logout",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    5),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 5),
                            ],
                          ),
                        ))
                  ],
                ))));
  }
}
