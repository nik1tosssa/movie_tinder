import 'package:flutter/material.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const MainScreenAppBar({
    super.key,
    required this.t,
  });

  final ThemeData t; //Theme.of(context) form main_screen.dart

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Center(
        child: Text(
          "Movie Tinder",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 111, 28, 28),
          ),
        ),
      ),
    );
  }
}
