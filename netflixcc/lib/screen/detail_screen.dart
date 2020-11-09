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