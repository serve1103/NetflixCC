import 'package:flutter/material.dart';
import 'package:netflixcc/model/model_movie.dart';
import 'package:netflixcc/screen/detail_screen.dart';

class BoxSlider extends StatelessWidget {
  //TODO: 홈스크린에서 영화정보 가져오기
  final List<Movie> movies;

  BoxSlider({this.movies});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('지금 뜨는 컨텐츠'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, movies),
            ),
          ),
        ],
      ),
    );
  }
}

//TODO: 사각형 이미지를 만들어주는 함수
List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  movie: movies[i],
                );
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('./images/' + movies[i].poster),
          ),
        ),
      ),
    );
  }
  return results;
}
