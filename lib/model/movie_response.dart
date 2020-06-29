import 'package:movie_app/model/movie.dart';

class MovieRespose {
  final List<Movie> movies;
  final String error;

  MovieRespose(this.movies, this.error);

  MovieRespose.fromJson(Map<String, dynamic> json)
      : movies = (json['results'] as List)
            .map((i) => new Movie.fromJson(i))
            .toList(),
        error = '';

  MovieRespose.withError(String errorValue)
      : movies = List(),
        error = errorValue;
}
