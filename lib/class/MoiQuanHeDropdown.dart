import "package:flutter/material.dart";


class DropDownButtonQuanHePage extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonQuanHePage> {
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
              value: "Vợ",
              child: Text(
                "Vợ",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Chồng",
              child: Text(
                "Chồng",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Cha",
              child: Text(
                "Cha",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Mẹ",
              child: Text(
                "Mẹ",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Con cái",
              child: Text(
                "Con cái",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "Ông bà",
              child: Text(
                "Ông bà",style: TextStyle(
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
                'Mối quan hệ: '+ itemValue,
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