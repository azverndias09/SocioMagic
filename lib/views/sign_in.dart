import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socio_magic_web/widgets/footer_bar/footer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, required this.isSignupPage}) : super(key: key);

  final bool isSignupPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff080B15),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 71,
                width: 180,
                child: isSignupPage
                    ? const HeaderGradientText(text: "Sign Up")
                    : const HeaderGradientText(text: "Log in")),
            Container(
              height: 680,
              width: 1000,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1C2235),
                    Color(0xff0B0F1C),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: _SignupHeader(name: 'Brands'),
                          ),
                          SizedBox(
                            height: 60,
                            child: VerticalDivider(
                                endIndent: 10,
                                color: Color(0xffBFC5D7),
                                thickness: 1),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: _SignupHeader(name: 'Influencer'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 524,
                        width: 524,
                        child: Image.asset(isSignupPage
                            ? 'assets/images/signupPageArt.png'
                            : 'assets/images/loginPageArt.png'),
                      ),
                      Column(
                        children: [
                          const TextEnterBox(boxName: "Full Name"),
                          const SizedBox(height: 15),
                          const TextEnterBox(boxName: "Email"),
                          const SizedBox(height: 15),
                          const TextEnterBox(boxName: "Password"),
                          const SizedBox(height: 35),
                          const _Gradientbuttonfilled(name: "SignUp"),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  isSignupPage
                                      ? "Already have an account?"
                                      : "Don't have an account?",
                                  style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.caption,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white)),
                              const SizedBox(width: 15),
                              ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return _gradient.createShader(bounds);
                                  },
                                  child: Text(
                                      isSignupPage ? "Log in" : "Sign Up",
                                      style: GoogleFonts.poppins(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .button,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)))
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(
                                  width: 200,
                                  child: Divider(
                                      color: Colors.white,
                                      thickness: 0.62,
                                      indent: 10,
                                      endIndent: 10)),
                              Text("Or",
                                  style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.caption,
                                      fontSize: 18,
                                      color: Colors.white)),
                              const SizedBox(
                                  width: 200,
                                  child: Divider(
                                      color: Colors.white,
                                      thickness: 0.62,
                                      indent: 10,
                                      endIndent: 10)),
                            ],
                          ),
                          Row(
                            children: const [
                              FooterIcon(
                                  iconImage: "assets/images/googleLogo.png"),
                              SizedBox(width: 15),
                              FooterIcon(
                                  iconImage: "assets/images/facebookLogo.png"),
                              SizedBox(width: 15),
                              FooterIcon(
                                  iconImage: "assets/images/twitterLogo.png"),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class _SignupHeader extends StatelessWidget {
  const _SignupHeader({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.caption,
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: const Color(0xffBFC5D7),
          ),
        ),
        const SizedBox(
          width: 482,
          child: Divider(color: Colors.white, thickness: 0.62),
        ),
      ],
    );
  }
}

class TextEnterBox extends StatelessWidget {
  const TextEnterBox({Key? key, required this.boxName}) : super(key: key);

  final String boxName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 460,
      child: IntrinsicHeight(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                boxName,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  color: const Color(0xffBFC5D7),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 62,
                child: TextFormField(
                  maxLines: null,
                  minLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    enabled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      gapPadding: 10.0,
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 10.0,
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Gradientbuttonfilled extends StatelessWidget {
  const _Gradientbuttonfilled({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          gradient: _gradient,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,

              minimumSize: const Size(468, 64),
              //make color or elevated button transparent
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                name,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyText2,
                  fontSize: 18,
                  color: const Color(0xff080b15),
                ),
              ),
            )));
  }
}
