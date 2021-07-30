import 'package:flutter/material.dart';

class Tags extends StatefulWidget {
  @override
  _TagsState createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  String? _value1;
  String? _value2;
  String? _value3;
  List<String> forNeet = ['Physics', 'Chemistry', 'Biology'];
  List<String> xllBoards = [
    'Physics',
    'Chemistry',
    'Biology',
    'Maths',
    'Hindi',
    'Physical Education',
    'Commerce'
  ];

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Color(0xFFa569bd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                hint: Text('IIT JEE'),
                value: _value1,
                onChanged: (value) {
                  setState(() {
                    _value1 = value as String;
                  });
                },
                items: <String>['Maths', 'Physics', 'Chemistry']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Color(0xFFec6b54),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                hint: Text('NEET'),
                value: _value2,
                onChanged: (value) {
                  setState(() {
                    _value2 = value as String;
                  });
                },
                items: forNeet.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            //xllBoards
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Color(0xFFffad41),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                hint: Text('Xll Boards'),
                value: _value3,
                onChanged: (value) {
                  setState(() {
                    _value3 = value as String;
                  });
                },
                items: xllBoards.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Xl X'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF16a085),
                //border width and color
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ICSE &ISE'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2e86c1),
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Engineering'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFc1862e),
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Govt Exams'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2e86c1),
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
