import 'package:flutter/material.dart';

class HXDiscoverPage extends StatefulWidget {
  HXDiscoverPage({Key key}) : super(key: key);

  _HXDiscoverPageState createState() => _HXDiscoverPageState();
}

class _HXDiscoverPageState extends State<HXDiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("发现",
            style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        ),
        title:Text(""),
        actions: <Widget>[
         Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("签到",
            style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        )
        ],
      ),
       body: Center(child: Text("发现"),),
    );
  }
}