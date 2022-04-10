import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubWhiteText extends StatelessWidget {
  const SubWhiteText({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.subtitle1,
        fontSize: 20,
        color: const Color(0xffBFC5D7),
      ),
    );
  }
}
