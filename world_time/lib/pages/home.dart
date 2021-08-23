import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child : Column(
            children: <Widget>[
              TextButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context,'/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
              ),
            ],
          ),
      ),
      //set it in area we can see
    );
  }
}
