import 'package:flutter/material.dart';
import 'package:netflixcc/model/model_movie.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //TODO: 영화더미 데이터
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'http://storage.enuri.info/pic_upload/knowbox_rss/201912/aHR0cDovL3d3dy56ZW5pdGhuZXdzLmNvbS9uZXdzL3Bob3RvLzIwMTkxMi8xMzUzMDBfMTQ4NTA5XzE4NTguanBn',
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
    return TopBar();
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
          Image.network(
            'https://i1.logomesh.com/570-_-476-_-85-_-i.pinimg.com/originals/60/b9/b1/60b9b11b28fde9cc13dd039ce8514076.png ',
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
