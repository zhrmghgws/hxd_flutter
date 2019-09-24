import 'package:flutter/material.dart';

class HXAccountPage extends StatefulWidget {
  HXAccountPage({Key key}) : super(key: key);

  _HXAccountPageState createState() => _HXAccountPageState();
}

class _HXAccountPageState extends State<HXAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child:
                Text("我的", style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        actions: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child:
                Text("设置", style: TextStyle(fontSize: 20, color: Colors.white)),
          ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("images/account_avatar.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 12,bottom: 12,left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("超",style: TextStyle(fontSize: 20, color: Colors.white)),
                              Container(
                                decoration:BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 2,right: 10,bottom: 2),
                                  child: Text("13051778835",
                                    style: TextStyle(fontSize: 15,color: Colors.white)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Image.asset("images/amount_right_dir.png")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
