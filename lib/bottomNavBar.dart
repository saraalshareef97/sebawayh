import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebawayh/Account/account.dart';
import 'package:sebawayh/Live/Live.dart';
import 'package:sebawayh/main.dart';
import 'package:sebawayh/notification.dart';
import 'package:sebawayh/starting_page.dart';

class BottomNavigationBarController extends StatefulWidget {
  @override
  _BottomNavigationBarControllerState createState() =>
      _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {
  final List<Widget> pages = [
    StartingPage(),
    Live(),
    Notifications(),
    Account()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            spreadRadius: 5,
            offset: Offset(
              15.0,
              15.0,
            ),
          )
        ]),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              iconSize: SizeConfig.blockSizeVertical * 4.5,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.lightGreen[800],
              onTap: (int index) => setState(() => _selectedIndex = index),
              currentIndex: selectedIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.home), title: Text('')),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.wifi_tethering,
                      color: Colors.lightGreen[800],
                      size: SizeConfig.blockSizeVertical * 5.2,
                    ),
                    icon: Icon(
                      Icons.wifi_tethering,
                      size: SizeConfig.blockSizeVertical * 5.2,
                    ),
                    title: Text('')),
                BottomNavigationBarItem(
                    activeIcon: Stack(children: [
                      Icon(
                        FontAwesomeIcons.bell,
                        color: Colors.yellow[600],
                        size: SizeConfig.blockSizeVertical * 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 4.5),
                        child: Stack(
                          children: <Widget>[
                            Icon(
                              Icons.brightness_1,
                              color: Colors.red,
                              size: SizeConfig.blockSizeVertical * 2.5,
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1.5,
                                    top: SizeConfig.blockSizeVertical * 0.3),
                                child: Text(
                                  '1',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      )
                    ]),
                    icon: Icon(FontAwesomeIcons.bell),
                    title: Text('')),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.user), title: Text('')),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: SizedBox(
              height: SizeConfig.blockSizeVertical * 9,
              child: _bottomNavigationBar(_selectedIndex)),
        )
      ]),
    );
  }
}
