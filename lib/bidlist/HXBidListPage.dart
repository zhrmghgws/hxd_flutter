import 'package:flutter/material.dart';

class HXBidListPage extends StatefulWidget {
  HXBidListPage({Key key}) : super(key: key);

  _HXBidListPageState createState() => _HXBidListPageState();
}

class _HXBidListPageState extends State<HXBidListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("产品",
              style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ),
          title: Text(""),
          actions: [
          Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("回款日历",
            style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        )
        ],
          bottom: TabBar(
            labelPadding:EdgeInsets.all(10),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.only(bottom: 5),
            tabs: <Widget>[
                 Text("新手",style: TextStyle(fontSize: 16)),
                 Text("智选",style: TextStyle(fontSize: 16)),
                 Text("散标",style: TextStyle(fontSize: 16)),
                 Text("债转",style: TextStyle(fontSize: 16)),
                 Text("续投",style: TextStyle(fontSize: 16)),
               ],
            ),
        ),
         body: TabBarView(
                children: <Widget>[
                  Text("新手"),
                  Text("智选"),
                  Text("散标"),
                  Text("债转"),
                  Text("续投"),
                ],
             ),
         )
    );
  }
}