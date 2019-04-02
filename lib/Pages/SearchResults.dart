import 'package:flutter/material.dart';

class SearchResultsPage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchResultsPage> {
  var items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Results Page"),
      ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              child: Text('${items[index]}', textAlign: TextAlign.center,),
            );
        },
      )
    );
  }
}
