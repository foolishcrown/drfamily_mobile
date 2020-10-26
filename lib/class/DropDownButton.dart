import "package:flutter/material.dart";


class DropDownButtonPage extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonPage> {
  String itemValue = "";
  String changeValue(String value){
    return value;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        underline: SizedBox(),
        elevation: 8,
        iconSize: 24,
        isDense: false,
        items: [
          DropdownMenuItem<String>(
            value: "Cảm sốt",
            child: Text(
              "Cảm sốt",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "Tai mũi họng",
            child: Text(
              "Tai mũi họng",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "Hồi sức",
            child: Text(
              "Hồi sức",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "Xương khớp",
            child: Text(
              "Xương khớp",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "Huyết áp, Nội tiết",
            child: Text(
              "Huyết áp, Nội tiết",style: TextStyle(
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
        icon: SizedBox(),
        hint: Container(

          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              width: 0,
            ),
          ),

          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                     'Vấn đề y tế: '+ itemValue,
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),

                  ),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ),

    );
  }
}