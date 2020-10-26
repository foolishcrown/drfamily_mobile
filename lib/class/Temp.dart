
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];




  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;
  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2020, 10, 13): [
        new Event(
          date: new DateTime(2020, 10, 13),

        ),

      ],
      new DateTime(2020, 10, 14): [
        new Event(
          date: new DateTime(2020, 10, 14),

        ),

      ],
    },
  );
  // @override
  // void initState() {
  //   /// Add more events to _markedDateMap EventList
  //   _markedDateMap.add(
  //       new DateTime(2020, 10, 14):[
  //       new Event(
  //         date: new DateTime(2020, 10, 14),
  //       ),
  //       ],);
  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

    _calendarCarousel = CalendarCarousel<Event>(
      todayBorderColor: Colors.greenAccent,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);

      },
      headerTitleTouchable: true,

      onHeaderTitlePressed: 	() => _targetDateTime,
      daysHaveCircularBorder: true,

      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,

      height: 300,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      markedDateCustomShapeBorder: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black)
      ),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,

      ),
      showHeader: false,
      markedDatesMap: _markedDateMap,
      todayTextStyle: TextStyle(
        color: Colors.black,
      ),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      // markedDateIconBuilder: (event) {
      //   return event.icon;
      // },
      // markedDateMoreShowTotal:
      //     true,
      todayButtonColor: Colors.lightBlue,

      selectedDayTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 1)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.white70,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.black12,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //custom icon
              // This trailing comma makes auto-formatting nicer for build methods.
              //custom icon without header
              Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                  bottom: 6.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          _currentMonth,
                            textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        )),
                    // FlatButton(
                    //   child: Text('PREV'),
                    //   onPressed: () {
                    //     setState(() {
                    //       _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month -1);
                    //       _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                    //
                    //     });
                    //
                    //   },
                    // ),
                    // FlatButton(
                    //   child: Text('NEXT'),
                    //   onPressed: () {
                    //     setState(() {
                    //       _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month +1);
                    //       _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                    //
                    //     });
                    //   },
                    // )

                    // Text('Swipe right and left to change the month',style:
                    //   TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 15,
                    //
                    //   ),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: _calendarCarousel,
              ),
              //
            ],
          ),
        );
  }
}
