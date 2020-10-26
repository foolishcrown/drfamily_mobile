import 'package:dr_family_app/screens/patients/pacomponents/PayCheckScreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


import 'package:table_calendar/table_calendar.dart';
class Appointment extends StatefulWidget {
  @override
  _MakeABooking createState() => new _MakeABooking();
}
class _MakeABooking extends State<Appointment> {
  CalendarController _controller;
  String selected = "first";
  Color _color = Colors.blue;
  TextStyle dayStyle(FontWeight fontWeight) {
    return TextStyle(color: Color(0xff30384c), fontWeight: fontWeight);
  }
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
  }

  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  bool pressAttention6 = false;
  bool pressAttention7 = false;
  bool pressAttention8 = false;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              TableCalendar(

                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarStyle: CalendarStyle(

                    weekdayStyle: dayStyle(FontWeight.normal),
                    weekendStyle: dayStyle(FontWeight.normal),
                    selectedColor: Color(0xff30374b),

                    todayColor: Colors.blue),
                daysOfWeekStyle: DaysOfWeekStyle(

                    weekendStyle: TextStyle(
                      color: Color(0xff30384c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    weekdayStyle: TextStyle(
                        color: Color(0xff30384c),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                    color: Color(0xff30384c),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Color(0xff30384c),
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Color(0xff30384c),
                  ),
                ),
                calendarController: _controller,

              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Color(0xFFE1F5FE)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Ca sáng',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                    ))
                              ])),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xff30374b),
                          ),
                          child: RaisedButton(
                            child: Text(
                              '7:00',
                              style: TextStyle(
                                color: pressAttention1 ? Colors.black87 : Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            color: pressAttention1 ? Colors.lightBlue : Colors.black12,

                            onPressed: () =>
                            {
                              setState(() => pressAttention1 =!pressAttention1),
                              setState(() => pressAttention2 = false),
                              setState(() => pressAttention3 = false),
                              setState(() => pressAttention4 = false),
                              setState(() => pressAttention5 = false),
                              setState(() => pressAttention6 = false),

                            },
                          ),
                        ),
                        Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xff30374b),
                            ),
                            child: RaisedButton(
                              child: Text(
                                '9:00 ',
                                style: TextStyle(
                                  color: pressAttention2 ? Colors.black87 : Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              color: pressAttention2 ? Colors.lightBlue : Colors.black12,

                              onPressed: () =>
                              {
                                setState(() => pressAttention2 =!pressAttention2),
                                setState(() => pressAttention5 = false),
                                setState(() => pressAttention3 = false),
                                setState(() => pressAttention4 = false),
                                setState(() => pressAttention1 = false),
                                setState(() => pressAttention6 = false),

                              },
                            )),
                        Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xff30374b),
                            ),
                            child: RaisedButton(
                              child: Text(
                                '10:00 ',
                                style: TextStyle(
                                  color: pressAttention3 ? Colors.black87 : Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              color: pressAttention3 ? Colors.lightBlue : Colors.black12,

                              onPressed: () =>
                              {
                                setState(() => pressAttention3 =!pressAttention3),
                                setState(() => pressAttention2 = false),
                                setState(() => pressAttention5 = false),
                                setState(() => pressAttention4 = false),
                                setState(() => pressAttention1 = false),
                                setState(() => pressAttention6 = false),

                              },
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Ca chiều',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                    ))
                              ])),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color:Color(0xff30374b),
                            ),
                            child: RaisedButton(
                              child: Text(
                                '13:00 ',
                                style: TextStyle(
                                  color: pressAttention4 ? Colors.black87 : Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              color: pressAttention4 ?Colors.lightBlue : Colors.black12,

                                        onPressed: () =>
                                        {
                                          setState(() => pressAttention4 =!pressAttention4),
                                          setState(() => pressAttention2 = false),
                                          setState(() => pressAttention3 = false),
                                          setState(() => pressAttention1 = false),
                                          setState(() => pressAttention5 = false),
                                          setState(() => pressAttention6 = false),

                                        },

                            )),
                        Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xff30374b),
                            ),
                            child: RaisedButton(
                              child: Text(
                                '14:00 ',
                                style: TextStyle(
                                  color: pressAttention5 ? Colors.black87 : Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              color: pressAttention5 ? Colors.lightBlue : Colors.black12,

                                        onPressed: () =>
                                        {
                                          setState(() => pressAttention5 =!pressAttention5),
                                          setState(() => pressAttention2 = false),
                                          setState(() => pressAttention3 = false),
                                          setState(() => pressAttention4 = false),
                                          setState(() => pressAttention1 = false),
                                          setState(() => pressAttention6 = false),

                                        },

                            )),
                        Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xff30374b),
                            ),
                            child: RaisedButton(
                              child: Text(
                                '17:00 ',
                                style: TextStyle(
                                  color: pressAttention6 ? Colors.black87 : Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              color: pressAttention6 ? Colors.lightBlue : Colors.black12,

                              onPressed: () =>
                              {
                                setState(() => pressAttention6 =!pressAttention6),
                                setState(() => pressAttention2 = false),
                                setState(() => pressAttention3 = false),
                                setState(() => pressAttention4 = false),
                                setState(() => pressAttention1 = false),
                                setState(() => pressAttention5 = false),

                              },
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // _submitButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        'Appontment',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 20,
      ),
    );
  }
  // Widget _submitButton() {
  //   return InkWell(
  //       onTap: () {
  //         Navigator.push(context,
  //             MaterialPageRoute(builder: (context) => payCheckScreen()));
  //       },
  //       child: Container(
  //         width: MediaQuery.of(context).size.width * 0.9,
  //         padding: EdgeInsets.symmetric(vertical: 15),
  //         alignment: Alignment.center,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.all(Radius.circular(16),),
  //             border: Border.all(color: Colors.blue),
  //             gradient: LinearGradient(
  //                 begin: Alignment.centerLeft,
  //                 end: Alignment.centerRight,
  //
  //                 colors: [Color(0xFFFFFFFF), Color(0xB3FFFFFF)])),
  //         child: Text(
  //           'Tiếp tục',
  //           style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.bold),
  //         ),
  //       ));
  // }
}