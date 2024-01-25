class Movie {
  int? id;
  String? title;
  double? voteAverage;
  String? releaseDate;
  String? overview;
  String? posterPath;

  Movie(this.id, this.title, this.voteAverage, this.releaseDate, this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> json) { //1
    this.id = json['id'] as int;
    this.title = json['title'];
    this.voteAverage = json['vote_average'] * 1.0 as double;
    this.releaseDate = json["release_date"];
    this.overview = json["overview"];
    this.posterPath = json["poster_path"];
  }
}

