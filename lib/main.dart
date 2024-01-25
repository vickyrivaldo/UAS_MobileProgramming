import 'package:flutter/material.dart';
import 'screen/movie_list.dart';
import 'screen/movie_list_view.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovieDB',
      home: MovieListView(),
    );
  }
}
