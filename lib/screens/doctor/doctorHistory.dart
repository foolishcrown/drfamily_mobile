import 'package:dr_family_app/screens/doctor/doctorHistoryDetail.dart';
import 'package:flutter/material.dart';

class DoctorHistory extends StatefulWidget {
  @override
  _DoctorHistoryState createState() => _DoctorHistoryState();
}

class _DoctorHistoryState extends State<DoctorHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trở về"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                title: Text('Trần Văn B $index'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_location,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          Text('13 km - 263 Khánh Hội,P5, Q4, \nTP. Hồ Chí Minh',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey)),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_time,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('5:00 P.M - 22/11/2020'),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_box,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text(' Bị cảm sốt'),
                      ],
                    ),
                  ],
                ),
                leading: Container(
                    child: CircleAvatar(
                  radius: 30,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/benhnhannam.jpg'),
                  ),
                )),
                trailing: Icon(Icons.description),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctorHistoryDetail(),
                      ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
