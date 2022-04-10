import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'linear_gradient.dart';

class GradientSubHeaderText extends StatelessWidget {
  const GradientSubHeaderText({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return blueGradient.createShader(bounds);
      },
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.bodyText2,
          fontSize: 47,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
