
import 'package:dr_family_app/screens/patients/pacomponents/InformationOfOrder.dart';
import 'package:flutter/material.dart';
class InformOrder extends StatefulWidget {
  @override
  _DoctorMedicalRequestState createState() => _DoctorMedicalRequestState();
}
class _DoctorMedicalRequestState extends State<InformOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                title: Text('Mai Nguyễn Nhật A '),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Địa chỉ: 123 Lý Tự Trọng Tp.Hồ Chí Minh '),
                    Text('Thời gian: 14h20')
                  ],
                ),
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.description),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PayCheckHistory(),
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