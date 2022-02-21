import 'package:flutter/material.dart';
import 'package:socio_magic_web/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff080B15),
        body: Column(
          children: const <Widget>[
            NavBar(),
          ],
        ));
  }
}
