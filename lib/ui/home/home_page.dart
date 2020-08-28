import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: null),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(onPressed: null),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(onPressed: null),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Introduction to Widgets'),
        leading: Icon(Icons.audiotrack),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Widget Text',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.face),
              Icon(Icons.ac_unit),
              Icon(Icons.apps),
            ],
          ),
          ListTile(
            leading: FlutterLogo(
              size: 50,
              colors: Colors.red,
            ),
            title: Text('Flutter Course Live'),
            subtitle: Text('@cerberodev'),
            trailing: Icon(
              Icons.email,
              color: Colors.red,
              size: 50,
            ),
            onLongPress: () {
              print('onLongPress');
            },
            onTap: () {
              print('onTap');
            },
          ),
        ],
      ),
    );
  }
}
