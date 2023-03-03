import 'package:flutter/material.dart';


class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}


class _LocationState extends State<Location> {

  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a location'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
