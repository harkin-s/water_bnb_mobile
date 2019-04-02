import 'package:flutter/material.dart';

class LoginPanel extends StatefulWidget {
  @override
  _LoginPanel createState() => _LoginPanel();
}

class _LoginPanel extends State<LoginPanel> {

  void goToSearchResults(){
    Navigator.pushReplacementNamed(context, '/SearchResultsPage');
  }

   @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
        Positioned(
          bottom: 48,
          left: 156,
          child: RaisedButton(
          color: Colors.blue,
          padding: const EdgeInsets.all(12.0),
          onPressed: goToSearchResults,
          child: const Text('LOGIN', textScaleFactor: 1.5,),
        ),
        )
      ]
      )
    );

  }
}
