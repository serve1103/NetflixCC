import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:netflixcc/model/model_movie.dart';

//TODO: 영화의 세부 정보를 보여주는 화면
class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({this.movie});

  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  //내가 찜한 컨텐츠 초기화
  bool like = false;

  @override

  void initState(){
    super.initState();
    like = widget.movie.like;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('./images/' + widget.movie.poster),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.1),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                  child: Image.asset('./images/' +widget.movie.poster),
                                  height: 300,
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Text('99% 일치 2019 15+ 시즌1대'),
                                ),
                                Container(),
                                Container(),
                                Container(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              makeMenuButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeMenuButton() {
  return Container();
}