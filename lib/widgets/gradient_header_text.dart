import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const LinearGradient _gradient = LinearGradient(colors: <Color>[
  Color(0xff00A3FF),
  Color(0xff31E3CB),
]);

class HeaderGradientText extends StatelessWidget {
  const HeaderGradientText({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return _gradient.createShader(bounds);
      },
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.bodyText2,
          fontSize: 43,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
