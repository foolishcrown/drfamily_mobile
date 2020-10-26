import "package:flutter/material.dart";


class DropDownButtonGioiTinhPage extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonGioiTinhPage> {
  String itemValue = "";
  String changeValue(String value){
    return value;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.4,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
        child: DropdownButton<String>(
          underline: SizedBox(),
          elevation: 8,
          iconSize: 24,
          isDense: false,
          items: [
            DropdownMenuItem<String>(
              value: "Nam",
              child: Text(
                "Nam",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Nữ",
              child: Text(
                "Nữ",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Khác",
              child: Text(
                "Khác",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),

          ],
          onChanged: (String newValue) {
            setState(() {
              itemValue = newValue;
            });
          },
          hint: Container(
            color: Colors.white,


            child: Center(
              child: Text(
                'Giới tính: '+ itemValue,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,

                ),

              ),
            ),
          ),
        ),

      ),

    );
  }
}