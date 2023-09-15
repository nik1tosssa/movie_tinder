import 'package:flutter/material.dart';

import '../../models.dart';
import '../widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final themeOfContext = Theme.of(context);
    final Movie movie = Movie(
      name: "Опенгеймер",
      country: "США",
      urlImage: "https://www.film.ru/sites/default/files/images/opp1.jpg",
    );

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).colorScheme.inversePrimary,
            Colors.red.shade300,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MainScreenAppBar(
          t: themeOfContext,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: MovieCard(
              movie: movie,
            ),
          ),
        ),
      ),
    );
  }
}
