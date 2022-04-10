import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'linear_gradient.dart';

class GradientButtonFilled extends StatelessWidget {
  const GradientButtonFilled({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          gradient: blueGradient,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,

              minimumSize: const Size(183, 50),
              //make color or elevated button transparent
            ),
            onPressed: () {},
            child: Padding(
                padding: const EdgeInsets.only(),
                child: Text(
                  name,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.button,
                    fontSize: 18,
                    color: const Color(0xff080b15),
                  ),
                ))));
  }
}
