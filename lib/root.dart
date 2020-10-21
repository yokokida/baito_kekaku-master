import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'view/routes/mypage_route.dart';
import 'view/routes/talk_route.dart';
import 'view/routes/search_route.dart';
import 'view/routes/ng_route.dart';
import 'view/routes/favorite_route.dart';

class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  List<Widget> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    _pages = [MyPage(), Favorite(), Search(), Talk(), Store()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('ホーム')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('LIKE')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('検索')),
          BottomNavigationBarItem(
              icon: Icon(Icons.textsms), title: Text('トーク')),
          BottomNavigationBarItem(
              icon: Icon(Icons.work, color: Colors.orange),
              title: Text('直送計画',
                  style: TextStyle(
                    color: Colors.orange,
                  ))),
        ],
      ),
    );
  }
}




