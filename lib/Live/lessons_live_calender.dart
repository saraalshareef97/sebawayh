import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/Live_page1.dart';
import 'package:sebawayh/Live/create_group.dart';
import 'package:sebawayh/main.dart';
import 'package:table_calendar/table_calendar.dart';

class LiveCalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: Container(
                margin: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                padding: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 1,
                    right: SizeConfig.blockSizeHorizontal * 1),
                child: Image(
                  //fit: BoxFit.cover,
                  image: AssetImage('images/loggo.png'),
                ),
              ),
              backgroundColor: Colors.lightGreen[800],
              centerTitle: true,
              title: Text(
                'Live',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.blockSizeVertical * 20,
                    color: Colors.lightGreen[800],
                  ),
                  MainLayer()
                ],
              ),
            )));
  }
}

class MainLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 1,
        ),
        height: MediaQuery.of(context).size.height,
        child: Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 1),
            alignment: Alignment.center,
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 3),
                      child: Stack(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 2.8,
                              ),
                              child: CircleAvatar(
                                radius: 43,
                                backgroundColor: Colors.blueGrey[100],
                              )),
                          Container(
                              height: SizeConfig.blockSizeVertical * 7.6,
                              width: SizeConfig.blockSizeHorizontal * 16,
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 4,
                                  left: SizeConfig.blockSizeHorizontal * 2),
                              alignment: Alignment.center,
                              child: Image(
                                image: AssetImage('images/man.png'),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 6,
                          right: SizeConfig.blockSizeHorizontal * 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Ahmad Shaweesh',
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5.5),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 2,
                                    SizeConfig.blockSizeVertical * 0.5,
                                    0,
                                    0),
                                child: Icon(Icons.brightness_1,
                                    size: SizeConfig.blockSizeVertical * 1.2,
                                    color: Colors.green[400]),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, 0, SizeConfig.blockSizeVertical * 3),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: SizeConfig.blockSizeVertical * 3.6,
                                ),
                                Icon(Icons.star,
                                    color: Colors.yellow[600],
                                    size: SizeConfig.blockSizeVertical * 3.6),
                                Icon(Icons.star_border,
                                    size: SizeConfig.blockSizeVertical * 3.6,
                                    color: Colors.yellow[600]),
                                Icon(
                                  Icons.star_border,
                                  size: SizeConfig.blockSizeVertical * 3.6,
                                  color: Colors.yellow[600],
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: SizeConfig.blockSizeVertical * 3.6,
                                  color: Colors.yellow[600],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 6,
                        right: SizeConfig.blockSizeHorizontal * 6),
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.grey[300],
                    )),
                Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 6,
                        top: SizeConfig.blockSizeVertical),
                    child: Text(
                      'My Calender',
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 5),
                    )),
                Calendarti(),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
                  alignment: Alignment.bottomCenter,
                  child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightGreen[800],
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 6,
                        //  minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 24,
                            SizeConfig.blockSizeVertical,
                            SizeConfig.blockSizeHorizontal * 24,
                            SizeConfig.blockSizeVertical),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) => CreateGroup()));
                        },
                        child: Text(
                          "CREATE GROUP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.safeBlockHorizontal * 4),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ],
            )));
  }
}

class Calendarti extends StatefulWidget {
  @override
  _CalendartiState createState() => _CalendartiState();
}

class _CalendartiState extends State<Calendarti> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 6,
          right: SizeConfig.blockSizeHorizontal * 6,
          top: SizeConfig.blockSizeVertical * 3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TableCalendar(
            initialCalendarFormat: CalendarFormat.month,
            calendarStyle: CalendarStyle(
                todayColor: Colors.grey,
                selectedColor: Colors.lightGreen[800],
                weekendStyle: TextStyle(color: Colors.black),
                todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.safeBlockHorizontal * 3,
                    color: Colors.white)),
            headerStyle: HeaderStyle(
              leftChevronIcon: Icon(null),
              rightChevronIcon: Icon(null),
              titleTextStyle:
                  TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
              centerHeaderTitle: true,
              formatButtonVisible: false,
            ),
            startingDayOfWeek: StartingDayOfWeek.monday,
            onDaySelected: (date, events) {
              print(date.toIso8601String());
            },
            builders: CalendarBuilders(
              selectedDayBuilder: (context, date, events) => Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal,
                      SizeConfig.blockSizeVertical * 0.5,
                      SizeConfig.blockSizeHorizontal,
                      SizeConfig.blockSizeVertical * 0.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[800],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.white),
                  )),
              todayDayBuilder: (context, date, events) => Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal,
                      SizeConfig.blockSizeVertical * 0.5,
                      SizeConfig.blockSizeHorizontal,
                      SizeConfig.blockSizeVertical * 0.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            calendarController: _controller,
          )
        ],
      ),
    );
  }
}
