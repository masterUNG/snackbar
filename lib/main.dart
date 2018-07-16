import 'package:flutter/material.dart';

void main()
 {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  // ignore: type_argument_not_matching_bounds
  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();

  _showSnackBar(){
    final messageString = "Show Snackbar from Click info";
    print(messageString);
    final snackBar = new SnackBar(
        content: new Text(messageString,
          style: new TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),),
      duration: new Duration(seconds: 10),
      backgroundColor: Colors.deepOrange,
      action: new SnackBarAction(label: "Click SnackBar",
          onPressed: (){
        print("Action from Click SnackBar");
      }),

    );
    _scaffold.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Snackbar Show",
      home: new Scaffold(
      key: _scaffold,
        appBar: new AppBar(
          title: new Text("Snackbar Show"),
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.info),
                  onPressed: _showSnackBar)
            ],
        ),
        body: new Text("body"),),
    );
  }
}

