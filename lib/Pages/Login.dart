import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../Widgets/LoginWidget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            fit: BoxFit.cover,
            image: 'https://system.hanseyachts.de/mis/website/document/-3547586282787685689/imageVersion?width=1980',
          ),
          width: double.infinity,
          height: double.infinity,
          
        ),
        Container(
          child: Row(
            children: <Widget>[
              LoginPanel()
            ],
          )
        ),
      ],
    );
  }
}
