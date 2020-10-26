
import 'package:flutter/material.dart';
class InformCheck extends StatefulWidget {
  @override
  _DoctorMedicalRequestState createState() => _DoctorMedicalRequestState();
}
class _DoctorMedicalRequestState extends State<InformCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                title: Text('Nguyễn Văn A $index'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Địa chỉ: 123 Lý Tự Trọng Tp.Hồ Chí Minh '),
                    Text('Thời gian: 13h')
                  ],
                ),
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.check_circle),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DoctorRequestDetail(),
                  //     ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}