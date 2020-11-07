import 'package:flutter/material.dart';
import 'package:netflixcc/widget/bottom_bar.dart';

void main() => runApp(MyApp());
//201107 시작

//MyApp의 상태를 관리하는 _MyAppState 클래스
class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'netflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            // TODO: NeverScrollableScrollPhysics
            // 손가락으로 탭이 넘어가는 것을 방지
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              //TODO: Home Container
              Container(
                child: Center(
                  child: Text(
                    'home',
                  ),
                ),
              ),
              //TODO: Search Container
              Container(
                child: Center(
                  child: Text(
                    'search',
                  ),
                ),
              ),
              //TODO: Save Container
              Container(
                child: Center(
                  child: Text(
                    'saveContent',
                  ),
                ),
              ),
              //TODO: More Container
              Container(
                child: Center(
                  child: Text(
                    'more',
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
