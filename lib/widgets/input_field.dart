import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<String> suggestions = [];

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final textFieldcontroller = TextEditingController();

  @override
  void initState() {
    // TODO: When Screen is opened it will fetch data from api and show relevant results
    super.initState();
    fetchSuggestions();
  }

  List<dynamic> _items = [];

  void fetchSuggestions() async {
    final res = await http.get(Uri.parse(
        'https://nogozoapi.herokuapp.com/api/book-search/?format=json'));
    final data = jsonDecode(res.body);
    setState(() {
      _items = data;
    });
    suggestions = _items.map<String>((e) => e['name'] as String).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      color: Color(0xFF93dfd9),
      height: 100,
      width: double.maxFinite,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 400,
                  child: TextField(
                    controller: textFieldcontroller,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 35,
                      ),
                      hintText: 'What are you looking for?',
                    ),
                    onTap: () {
                      showSearch(
                        context: context,
                        delegate: DataSearch(),
                      );
                    },
                  ),
                ),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey,
                  size: 35,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Fizzy Search
class DataSearch extends SearchDelegate<String> {
  //TODO: Implement suggestions from API
  final recent = [
    'science-Fiction',
    'adventure novels',
    'romance novels',
    'horror',
    'educational',
    'motivational',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Card(
          color: Colors.cyan,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recent
        : suggestions.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.search_rounded),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
