class Movie {
  final int id;
  final String title;
  final String overview;
  final String backdropPath;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

// Constructor
  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.backdropPath,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJSON(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        backdropPath: json['backdrop_path'],
        posterPath: json['backdrop_path'],
        releaseDate: json['release_date'],
        voteAverage: double.parse(json['vote_average']));
  }
}
