import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflixcc/model/model_movie.dart';
import 'package:netflixcc/widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //TODO: 영화더미 데이터
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'Crash_Landing_on_You_poster.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'Crash_Landing_on_You_poster.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'Crash_Landing_on_You_poster.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'Crash_Landing_on_You_poster.jpg',
      'like': false
    })
  ];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(
              movies: movies,
            ),
            TopBar(),
          ],
        ),
      ],
    );
    //   Container(
    //   child: Center(
    //     child: Text('Home123 '),
    //   ),
    // );
  }
}

// https://www.citypng.com/public/uploads/preview/-11594682252dptiuayobf.png
class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceBetween ,
        children: <Widget>[
          //TODO: 탑바 로고
          //네트워크 이미지를 가져옴
          Image.asset(
            'images/netflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          //TODO: 탑바 텍스트 1
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              'TV 프로그램',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          //TODO: 탑바 텍스트 2
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              '영화',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          //TODO: 탑바 텍스트 3
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              '내가 찜한 콘텐츠  ',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
