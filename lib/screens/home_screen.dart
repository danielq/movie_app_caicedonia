import 'package:flutter/material.dart';
import 'package:movie_app_caicedonia/providers/movies_provider.dart';
import 'package:movie_app_caicedonia/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    print((moviesProvider.onDisplayMovies));
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cartelera'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_off_sharp))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // TODO: CardSwiper
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              // listado horizontal de peliculas
              MovieSlider(
                  movies: moviesProvider.popularMovies, title: 'Populares!')
            ],
          ),
        ));
  }
}
