import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'HotNews.dart';
import 'LifeEdu.dart';
import 'MyCenter.dart';
import 'OnlineShop.dart';

class Index_Page extends StatefulWidget {
  @override
  _Index_PageState createState() => _Index_PageState();
}

class _Index_PageState extends State<Index_Page> {
  final List<BottomNavigationBarItem> bottomTabs = [
    //图标列表
    BottomNavigationBarItem( 
      backgroundColor: Colors.white70,
      icon: Icon(
        Icons.fiber_new,
        // color: Color.fromRGBO(255, 255, 255, 1),
      ),
      title: Text(
        '热点资讯',
        // style: TextStyle(
        //   color: Color.fromRGBO(255, 255, 255, 1),
        // ),
      ),
   //   activeIcon: Icon(Icons.fiber_new, color: Color.fromRGBO(56, 56, 56, 1)),
    ),
    BottomNavigationBarItem(
     backgroundColor: Colors.white70,
      icon: Icon(
        Icons.book,
        // color: Color.fromRGBO(255, 255, 255, 1),
      ),
      title: Text(
        '生活教育',
        // style: TextStyle(
        //   color: Color.fromRGBO(255, 255, 255, 1),
        // ),
      ),
  //   activeIcon: Icon(Icons.book, color: Color.fromRGBO(56, 56, 56, 1)),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.white70,
      icon: Icon(
        Icons.store,
        // color: Color.fromRGBO(255, 255, 255, 1),
      ),
      title: Text(
        '在线商城',
        // style: TextStyle(
        //   color: Color.fromRGBO(255, 255, 255, 1),
        // ),
      ),
    //  activeIcon: Icon(Icons.store, color: Color.fromRGBO(56, 56, 56, 1)),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.white70,
      icon: Icon(
        Icons.person,
        // color: Color.fromRGBO(255, 255, 255, 1),
      ),
      title: Text(
        '个人中心',
        
        // style: TextStyle(
        //   color: Color.fromRGBO(255, 255, 255, 1),
        // ),
      ),
     //  activeIcon: Icon(Icons.person, color: Color.fromRGBO(56, 56, 56, 1)),
    ),
  ];
  final List tabBodies = [
    //页面列表

    HotNews(),
    LifeEdu(),
    OnlineShop(),
    MyCenter(),
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    // TODO: implement initState
    currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(136, 170, 171, 1),
        fixedColor: Colors.white70,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: bottomTabs,
        // unselectedLabelStyle:TextStyle(color: Colors.purple),
        // selectedLabelStyle:TextStyle(color: Colors.orange),
        onTap: (index) {
          if (mounted) {
            setState(() {
              currentIndex = index;
              currentPage = tabBodies[currentIndex];
            });
          }
        },
      ),
      body: currentPage,
    );
  }
}
