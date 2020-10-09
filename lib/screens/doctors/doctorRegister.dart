import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'loginDoctor.dart';

class DoctorRegister extends StatefulWidget {
  @override
  _DoctorRegisterState createState() => _DoctorRegisterState();
}

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    this.label,
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) onChanged(value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}

class _DoctorRegisterState extends State<DoctorRegister> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var fullNameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();
  var dateOfBirthController = TextEditingController();
  bool _isRadioSelected = false;
  String _date = "Ngày sinh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Đăng ký',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.only(top: 25),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Email',
                          hintText: 'Nhập email ',
                          suffixIcon: Icon(Icons.email)),
                      controller: emailController,
                      validator: (email) {
                        if (email.isEmpty) {
                          return 'Vui lòng nhập mật khẩu';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Họ và tên',
                          hintText: 'Nhập họ và tên',
                          suffixIcon: Icon(Icons.account_box)),
                      autofocus: true,
                      controller: fullNameController,
                      validator: (fullName) {
                        if (fullName.isEmpty) {
                          return 'Vui lòng nhập họ và tên';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 0.0,
                      ),
                    ),
                    padding:
                        EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Giới tính:'),
                        LabeledRadio(
                          label: 'Nam',
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          value: true,
                          groupValue: _isRadioSelected,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                            });
                          },
                        ),
                        LabeledRadio(
                          label: 'Nữ',
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          value: false,
                          groupValue: _isRadioSelected,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                            });
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 55),
                          child: Icon(Icons.wc),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Mật khẩu',
                          hintText: 'Nhập mật khẩu',
                          suffixIcon: Icon(Icons.vpn_key)),
                      obscureText: true,
                      autofocus: true,
                      controller: passwordController,
                      validator: (password) {
                        if (password.length < 6 || password.length > 30) {
                          return 'Vui lòng nhập mật khẩu từ 6 đến 30 kí tự';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Xác nhận mật khẩu',
                          hintText: 'Nhập mật khẩu',
                          suffixIcon: Icon(Icons.vpn_key)),
                      obscureText: true,
                      autofocus: true,
                      controller: confirmPasswordController,
                      validator: (confirmPassword) {
                        if (confirmPassword.length < 6 ||
                            confirmPassword.length > 30) {
                          return 'Vui lòng nhập mật khẩu từ 6 đến 30 kí tự';
                        }
                        if (confirmPassword != passwordController.text) {
                          return 'Mật khẩu và xác nhận mật khẩu không trung khớp';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 0.0,
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            theme: DatePickerTheme(
                              containerHeight: 210.0,
                            ),
                            showTitleActions: true,
                            minTime: DateTime(1900, 1, 1),
                            maxTime: DateTime(2999, 12, 31), onConfirm: (date) {
                              print('confirm $date');
                              _date = '${date.year} - ${date.month} - ${date.day}';
                              setState(() {});
                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        " $_date",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Icon(
                              Icons.date_range,
                              size: 18.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Địa chỉ',
                          hintText: 'Nhập địa chỉ',
                          suffixIcon: Icon(Icons.add_location)),
                      autofocus: true,
                      controller: addressController,
                      validator: (address) {
                        if (address.isEmpty) {
                          return 'Vui lòng nhập địa chỉ';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Số điện thoại',
                          hintText: 'Nhập số điện thoại',
                          suffixIcon: Icon(Icons.phone_android)),
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      autofocus: true,
                      validator: (phone) {
                        if (phone.isEmpty) {
                          return 'Vui lòng nhập số điện thoại';
                        }
                        return null;
                      },
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        child: FlatButton(
                          child: Text('Đăng ký'),
                          color: Colors.black12,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // do something here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginDoctor()),
                              );
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: FlatButton(
                          child: Text('Hủy'),
                          color: Colors.black12,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginDoctor()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
