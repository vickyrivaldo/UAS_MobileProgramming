import 'package:flutter/material.dart';
import '../model/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie selectedMovie;

  const MovieDetail({Key? key, required this.selectedMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path;
    double screenHeight =
        MediaQuery.of(context).size.height;

    if (selectedMovie.posterPath != null){
      path = 'https://image.tmdb.org/t/p/w500/${selectedMovie.posterPath}';
    }else{
      path = 'https://images.tmdb.org/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMovie.title}'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                height: screenHeight / 1.5,
                child: Image.network(path),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text('${selectedMovie.overview}'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Rate: ${selectedMovie.voteAverage}'),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('Release: ${selectedMovie.releaseDate}'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text('Created By Vicky Rivaldo G.M, Nim: 21201095'),
              ),
            ],
          ),
        ),
      )
    );
  }
}
