import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebawayh/Live/done.dart';
import 'package:sebawayh/main.dart';
import 'package:table_calendar/table_calendar.dart';

class AvailableTime extends StatefulWidget {
  @override
  _AvailableTimeState createState() => _AvailableTimeState();
}

class _AvailableTimeState extends State<AvailableTime> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

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
                    left: SizeConfig.blockSizeHorizontal,
                  ),
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
              Container(
                margin: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 4, 0, 0, 0),
                child: Text(
                  'T. Ahmad Shaweesh',
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 6),
              Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Available times',
                        style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 5),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 15,
                              SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeHorizontal * 15,
                              0),
                          child: Text(
                            'Reserve the date and time you want to go live with the teacher',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 3,
                                color: Colors.grey[600]),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  )),
              SizedBox(height: SizeConfig.blockSizeVertical * 3),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: TableCalendar(
                        initialCalendarFormat: CalendarFormat.week,
                        calendarStyle: CalendarStyle(
                            contentPadding: EdgeInsets.fromLTRB(
                                SizeConfig.blockSizeHorizontal * 4,
                                0,
                                SizeConfig.blockSizeHorizontal * 4,
                                0),
                            weekdayStyle: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                            weekendStyle: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
                                color: Colors.red),
                            renderDaysOfWeek: false,
                            todayColor: Colors.lightGreen[800],
                            todayStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.safeBlockHorizontal * 3,
                                color: Colors.white)),
                        headerStyle: HeaderStyle(
                            titleTextStyle: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5.3),
                            centerHeaderTitle: true,
                            formatButtonVisible: false,
                            headerPadding: EdgeInsets.fromLTRB(
                                SizeConfig.blockSizeHorizontal * 16,
                                SizeConfig.blockSizeVertical,
                                SizeConfig.blockSizeHorizontal * 16,
                                SizeConfig.blockSizeVertical)),
                        builders: CalendarBuilders(
                          selectedDayBuilder: (context, date, events) =>
                              Container(
                                  margin: const EdgeInsets.all(11.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen[800],
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Text(
                                    date.day.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 4),
                                  )),
                          todayDayBuilder: (context, date, events) => Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(
                                date.day.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              )),
                        ),
                        calendarController: _controller,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical),
                    color: Colors.lightGreen[800],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '4 pm - 6 pm',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 3.5),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical),
                    color: Colors.white,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '6 pm - 7 pm',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 3.5),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical),
                    color: Colors.white,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '6 pm - 7 pm',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 3.5),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical),
                    color: Colors.white,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '6 pm - 7 pm',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 3.5),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical,
                        SizeConfig.blockSizeHorizontal * 20,
                        SizeConfig.blockSizeVertical),
                    color: Colors.white,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '6 pm - 7 pm',
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0, 0, SizeConfig.blockSizeHorizontal * 6, 0),
                alignment: Alignment.bottomRight,
                child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreen[800],
                    child: MaterialButton(
                      height: 45,
                      //  minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 17,
                          SizeConfig.blockSizeVertical,
                          SizeConfig.blockSizeHorizontal * 17,
                          SizeConfig.blockSizeVertical),
                      onPressed: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => Done()));
                      },
                      child: Text(
                        "Next",
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
      ),
    );
  }
}
