import 'package:flutter/material.dart';

import 'doctorRequestDetail_2.dart';

class DoctorAppointmentSchedule extends StatefulWidget {
  @override
  _DoctorAppointmentScheduleState createState() =>
      _DoctorAppointmentScheduleState();
}

class _DoctorAppointmentScheduleState extends State<DoctorAppointmentSchedule> {
  int _index = 0;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
          controller: _scrollController, // <---- Here, the controller
          isAlwaysShown: true,
      child: Center(
        child: Container(
          child: SizedBox(
            height: 210, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 1),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: i == _index ? 1 : 0.9,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        subtitle: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage: AssetImage(
                                        'assets/images/benhnhannam.jpg'),
                                  ),
                                )
                              ],
                            ),
                            Center(
                              child: Text(
                                'Trần Văn Nam ${i + 1}',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.add_location, color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    padding:
                                        EdgeInsets.only(right: 5, bottom: 5),
                                  ),
                                  Text(
                                      '263 Khánh Hội, P5, Q4, TP. Hồ Chí Minh '),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.access_time, color: Color.fromRGBO(78, 201, 228, 1),),
                                    padding:
                                        EdgeInsets.only(right: 5, bottom: 5),
                                  ),
                                  Text('5:00 P.M - 22/11/2020'),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.transfer_within_a_station, color: Color.fromRGBO(78, 201, 228, 1),
                                          ),
                                          padding: EdgeInsets.only(
                                              right: 5, bottom: 5),
                                        ),
                                        Text('10 km'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.add_box, color: Color.fromRGBO(78, 201, 228, 1),),
                                    padding:
                                        EdgeInsets.only(right: 5, bottom: 5),
                                  ),
                                  Text(' Bị cảm sốt'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorRequestDetail_2(),
                              ));
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    ));
  }
}
