import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff0F1426),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                height: 80,
                width: 150,
                child: Image.asset('assets/images/s_logo.png'),
              ),
              Text(
                "SOCIOMAGIC",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headline2,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff00ADB8),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              _NavBarItem(title: "Creators"),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(title: "Brands"),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(title: "Trends"),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(title: "Events and Webinars"),
              SizedBox(
                width: 60,
              ),
              _signInButon(),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    // return Text(title,
    //     style: Theme.of(context)
    //         .textTheme
    //         .bodyText2
    //         ?.copyWith(color: Colors.white));

    return Text(title,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.bodyText2,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xffBFC5D7),
        ));
  }
}

class _signInButon extends StatelessWidget {
  const _signInButon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 43,
      decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          gradient:
              LinearGradient(colors: [Color(0xff00A3FF), Color(0xff31E3CB)])),
      child: Center(
        child: Text("Sign In",
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.bodyText2,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff080B15),
            )),
      ),
    );
  }
}
