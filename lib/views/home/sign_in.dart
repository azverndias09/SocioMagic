import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff080B15),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                height: 71,
                width: 180,
                child: HeaderGradientText(text: "Sign Up")),
            Container(
              height: 600,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: const [
                        _SignupHeader(name: 'Brands'),
                        VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                          width: 10,
                        ),
                        _SignupHeader(name: 'Influencer'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/signupPageArt.png'),
                      Column(
                        children: [
                          TextEnterBox(boxName: "Full Name"),
                          SizedBox(height: 15),
                          TextEnterBox(boxName: "Email"),
                          SizedBox(height: 15),
                          TextEnterBox(boxName: "Password"),
                          SizedBox(height: 35),
                          _Gradientbuttonfilled(name: "SignUp"),
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
          width: 484,
          child: Divider(
            color: Colors.white,
            thickness: 0.62,
            indent: 10,
            endIndent: 10,
          ),
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
