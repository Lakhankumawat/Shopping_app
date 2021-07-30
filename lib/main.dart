import 'package:flutter/material.dart';
import 'package:nogozo_shopping_app/widgets/appbar_actions.dart';
import './widgets/input_field.dart';
import './widgets/carousel.dart';
import './widgets/tags.dart';
import './widgets/books_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF93dfd9),
          elevation: 0.0,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: InkResponse(
              onTap: () {},
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 10),
            child: Image(
              image: AssetImage('images/amazon_logo.jpg'),
              height: 30,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            AppBarActions(),
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputField(),
                Carousel(),
                Padding(padding: EdgeInsets.all(10), child: Tags()),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Books of Recommendation',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Expanded(child: Books()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
