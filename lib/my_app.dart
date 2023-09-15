import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/router/router.dart';
import 'features/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        routes: routes,
      ),
    );
  }
}

class CardProvider extends ChangeNotifier {
  Offset _position = Offset.zero;
  Offset get position => _position;

  void startPosition(DragStartDetails details) {}
  void updatePosition(DragUpdateDetails details) {
    _position += details.delta;
  }

  void endPosition() {}
}
