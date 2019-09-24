import 'package:flutter/material.dart';

class HXHomePage extends StatefulWidget {
  @override
  _HXHomePageState createState() => _HXHomePageState();
}

class _HXHomePageState extends State<HXHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("消息",
            style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        ),
        title:Text(""),
        actions: <Widget>[
         Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("我要借款",
            style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        )
        ],
        
      ),
      body: Center(
        child: Text("首页"),
      ),
    );
  }
}