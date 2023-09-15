import 'package:flutter/material.dart';
import 'package:movie_tinder/features/main_screen/models/tinder_card_info.dart';
import 'package:movie_tinder/my_app.dart';
import 'package:provider/provider.dart';

import '../widgets.dart';

class MovieCard extends StatefulWidget {
  final Movie movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) => SizedBox.expand(
        child: buildFrontCard(),
      );

  Widget buildFrontCard() => GestureDetector(
        child: buildCard(
          Builder(builder: (context){
            final provider = Provider.of<CardProvider>;
            final position = provider.position;
            final milsecond = 0;
            return AnimatedContainer(
              curve: Curve.easeInOut,
              duration: Duration(milliseconds: milsecond),
              transform: Matrix4.identity()..translate(position.dx, position.dy,),
              child:buildCard(),
            ),
          }),
        ),
        onPanStart: (details) {
          final provider = Provider.of<CardProvider>(context);
          provider.startPosition(details);
        },
        onPanUpdate: (details) {
          final provider = Provider.of<CardProvider>(context);
          provider.updatePosition(details);
        },
        onPanEnd: (details) {
          final provider = Provider.of<CardProvider>(context);
          provider.startPosition(details);
        },
      );

  Widget buildCard(Builder) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.movie.urlImage),
              fit: BoxFit.cover,
              alignment: const Alignment(-0.3, 0),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                stops: [0.7, 1],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Spacer(),
                  MovieCardInfoStroke(
                    name: widget.movie.name,
                    fontSizeValue: 30,
                    fontWeightValue: FontWeight.w700,
                  ),
                  MovieCardInfoStroke(
                    name: widget.movie.country,
                    fontSizeValue: 18,
                    fontWeightValue: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
