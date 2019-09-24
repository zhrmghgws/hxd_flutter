import 'package:flutter/material.dart';
import 'package:flutter_hexindai/account/HXAccountPage.dart';
import 'package:flutter_hexindai/bidlist/HXBidListPage.dart';
import 'package:flutter_hexindai/discover/HXDiscoverPage.dart';
import 'package:flutter_hexindai/home/HXHomePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        highlightColor: Colors.red[300],
        splashColor: Colors.red[600]
      ),

      home: HXMainPage(),
    );
  }
}

class HXMainPage extends StatefulWidget {
  HXMainPage({Key key}) : super(key: key);
  @override
  _HXMainPageState createState() => _HXMainPageState();
}

class _HXMainPageState extends State<HXMainPage> {
  int selectIndex=0;
  var homoPage=HXHomePage();
  var bidListPage=HXBidListPage();
  var discoverPage=HXDiscoverPage();
  var accountPage=HXAccountPage();
  
  Widget showContentPage(){
    switch (selectIndex) {
      case 0:
        return homoPage;
      case 1:
        return bidListPage;
      case 2:
        return discoverPage;
      case 3:
        return accountPage;
      default:
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: showContentPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
        currentIndex: selectIndex,
        onTap: (index){
          setState(() {
            selectIndex=index;
          });
        },
        items: [
            BottomNavigationBarItem(
            icon:Image.asset('images/tab_item_normal_1.png',width: 30,height: 30,),
            title: Text('首页'),
            ),
                  BottomNavigationBarItem(
            icon: Image.asset('images/tab_item_normal_2.png',width: 30,height: 30),
            title: Text('投资')
            ),
                  BottomNavigationBarItem(
            icon: Image.asset('images/tab_item_normal_3.png',width: 30,height: 30),
            title: Text('发现')
            ),
                  BottomNavigationBarItem(
            icon: Image.asset('images/tab_item_normal_4.png',width: 30,height: 30),
            title: Text('账户')
            ),
        
        ],
      ),
    );
  }
}
