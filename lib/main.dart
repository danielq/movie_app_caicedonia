import 'package:flutter/material.dart';
import 'package:movie_app_caicedonia/providers/movies_provider.dart';
import 'package:movie_app_caicedonia/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        )
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {'home': (_) => HomeScreen(), 'details': (_) => DetailsScreen()},
      // tema pricipal de la app
      theme: ThemeData.light()
          .copyWith(appBarTheme: AppBarTheme(color: Colors.lightBlue)),
    );
  }
}
