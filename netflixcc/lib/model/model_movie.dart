//TODO: 영화관리를 위한 모델
class Movie {
  //영화의 구성요소 url을 가져와 저장할 변수 선언
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
  : title = map['title'],
  keyword = map['keyword'],
  poster = map['poster'],
  like = map['like'];

  @override
  String toString() => "Movie<$title:$keyword>";
}