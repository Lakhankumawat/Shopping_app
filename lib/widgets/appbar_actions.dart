import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10, right: 20),
          child: InkResponse(
            onTap: () {},
            child: Icon(
              Icons.shopping_basket,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 16,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            child: Center(
              child: Text(
                '5',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
