import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socio_magic_web/widgets/custom_clipper.dart';
import 'package:socio_magic_web/widgets/navigation_bar/navigation_bar.dart';

const LinearGradient _gradient = LinearGradient(colors: <Color>[
  Color(0xff00A3FF),
  Color(0xff31E3CB),
]);

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff080B15),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 795,
              color: const Color(0xff080B15),
              child: Column(
                children: <Widget>[
                  const NavBar(),
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 390,
                        width: 560,
                        child: Column(
                          children: [
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return _gradient.createShader(bounds);
                              },
                              child: Text(
                                "Reach The Right People, The Right Way!",
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  fontSize: 47,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Get excellent content from talented people and create powerful associations with influencers. Establish your brand amongst your target audience and skyrocket your brand value",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontSize: 24,
                                color: const Color(0xffBFC5D7),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                _Gradientbuttonfilled(
                                  name: 'Login',
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                _GradientOutlinedButton()
                              ],
                            ) // _gradientButton(name: "hello"),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Image.asset("assets/images/HOMEPAGE.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 125),
              height: 795,
              color: const Color(0xff080B15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 500,
                    child: Column(
                      children: [
                        const HeaderGradientText(text: "The Problem"),
                        Text(
                          "Get excellent content from talented people and create powerful associations with influencers. Establish your brand amongst your target audience and skyrocket your brand value",
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontSize: 22,
                            color: const Color(0xffBFC5D7),
                          ),
                        ),
                        SizedBox(
                          child: Image.asset("assets/images/Bulb.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image.asset("assets/images/question_mark.png"),
                        ),
                        const HeaderGradientText(text: "Our Solution"),
                        const SubWhiteText(
                            text:
                                "We have got you all covered our platform will choose and filter out the best for you according to your needs and requirements.")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xff080B15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      HeaderGradientText(text: "Skill Up"),
                      SizedBox(
                        width: 590,
                        child: SubWhiteText(
                            text:
                                "Do you want to sharpen your skills? We have got you all covered."),
                      ),
                      _Gradientbuttonfilled(name: "See Workshops"),
                    ],
                  ),
                  SizedBox(
                    child: Image.asset("assets/images/barup.png"),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: const Color(0xff080B15),
                    child: CustomPaint(
                      painter: MyPainter(),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 700),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20)),
                          const HeaderGradientText(text: "Sell Your Idea"),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20)),
                          SizedBox(
                            height: 545,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/images/Girl.png"),
                                const SizedBox(
                                  width: 80,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 110),
                                  child: Image.asset(
                                      "assets/images/cashMoney.png"),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 210),
                                  child: Image.asset("assets/images/Boy.png"),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20)),
                          const HeaderGradientText(
                              text: "Connect with people who love your idea"),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20)),
                          const _Gradientbuttonfilled(name: "Sell Your Ideas"),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
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
                                      textStyle:
                                          Theme.of(context).textTheme.button,
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
                            FooterIcon(
                                iconImage: "assets/images/googleLogo.png"),
                            FooterIcon(
                                iconImage: "assets/images/facebookLogo.png"),
                            FooterIcon(
                                iconImage: "assets/images/twitterLogo.png"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
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

class _GradientOutlinedButton extends StatelessWidget {
  final double thickness;

  const _GradientOutlinedButton({
    Key? key,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.blue,
        ),
        gradient: _gradient,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        color: const Color(0xff080b15),
        margin: EdgeInsets.all(thickness),
        child: OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onSurface: Colors.transparent,
            shadowColor: Colors.transparent,
            minimumSize: const Size(183, 47),
            //make color or elevated button transparent
          ),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return _gradient.createShader(bounds);
            },
            child: Text(
              'Sign Up',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.button,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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

class SubWhiteText extends StatelessWidget {
  const SubWhiteText({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Do you want to sharpen your skills? We have got you all covered.",
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.subtitle1,
        fontSize: 20,
        color: const Color(0xffBFC5D7),
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
