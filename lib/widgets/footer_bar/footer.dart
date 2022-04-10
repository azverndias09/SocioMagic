import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterPart extends StatelessWidget {
  const FooterPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      width: 1300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 100, 0),
                child: SizedBox(
                  width: 633,
                  height: 135,
                  child: Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 18,
                      color: const Color(0xffBFC5D7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 285,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Subscribe",
                          style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.button,
                              fontSize: 18,
                              color: const Color(0xffBFC5D7))),
                    ),
                    const SizedBox(height: 10),
                    const EmailEnterBox(),
                    const SizedBox(height: 10),
                    Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ",
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.caption,
                        fontSize: 12,
                        color: const Color(0xffBFC5D7),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Quick Links:",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.button,
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 105,
                    child: Column(
                      children: const [
                        Align(
                            alignment: Alignment.centerRight,
                            child: LinkText(name: "Home")),
                        Align(
                            alignment: Alignment.centerRight,
                            child: LinkText(name: "Link 1")),
                        Align(
                            alignment: Alignment.centerRight,
                            child: LinkText(name: "Link 2")),
                        Align(
                            alignment: Alignment.centerRight,
                            child: LinkText(name: "Link 3")),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Divider(
            color: Color(0xffBFC5D7),
            thickness: 0.62,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SOCIOMAGIC",
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff00ADB8),
                  ),
                ),
                Row(
                  children: const [
                    FooterIcon(iconImage: "assets/images/googleLogo.png"),
                    FooterIcon(iconImage: "assets/images/facebookLogo.png"),
                    FooterIcon(iconImage: "assets/images/twitterLogo.png"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EmailEnterBox extends StatelessWidget {
  const EmailEnterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabled: true,
        labelText: "Enter your Email",
        labelStyle: const TextStyle(
          color: Color(0xffBFC5D7),
          fontSize: 14,
          fontFamily: "Roboto",
        ),
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
      style: const TextStyle(
        fontFamily: "Roboto",
        color: Colors.white,
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  const LinkText({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.button,
        fontSize: 18,
        color: const Color(0xffBFC5D7),
      ),
      textAlign: TextAlign.right,
    );
  }
}

class FooterIcon extends StatelessWidget {
  const FooterIcon({Key? key, required this.iconImage}) : super(key: key);

  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return Image(
      width: 50,
      height: 50,
      image: AssetImage(iconImage),
    );
  }
}
