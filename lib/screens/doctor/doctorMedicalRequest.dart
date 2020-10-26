import 'doctorRequestDetail.dart';
import 'package:flutter/material.dart';

class DoctorMedicalRequest extends StatefulWidget {
  @override
  _DoctorMedicalRequestState createState() => _DoctorMedicalRequestState();
}

class _DoctorMedicalRequestState extends State<DoctorMedicalRequest> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                                        'assets/images/benhnhannu.jpg'),
                                  ),
                                )
                              ],
                            ),
                            Center(
                              child: Text(
                                'Nguyễn Lê Phương Hạnh ${i + 1}',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.add_location,
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
                                    child: Icon(Icons.access_time),
                                    padding:
                                        EdgeInsets.only(right: 5, bottom: 5),
                                  ),
                                  Text('5:00 A.M - 20/11/2020'),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.transfer_within_a_station,
                                          ),
                                          padding: EdgeInsets.only(
                                              right: 5, bottom: 5),
                                        ),
                                        Text('13 km'),
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
                                    child: Icon(Icons.add_box),
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
                                builder: (context) => DoctorRequestDetail(),
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
    );
  }
}

/*
trong ttct bo sungn them thoi gian kham voi quang duong
sua thanh trieu chung 
*/
