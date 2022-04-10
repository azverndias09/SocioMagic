import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socio_magic_web/widgets/customClippers/custom_clipper.dart';
import 'package:socio_magic_web/widgets/footer_bar/footer.dart';
import 'package:socio_magic_web/widgets/gradient_filled_button.dart';
import 'package:socio_magic_web/widgets/gradient_header_text.dart';
import 'package:socio_magic_web/widgets/gradient_sub_header.dart';
import 'package:socio_magic_web/widgets/linear_gradient.dart';
import 'package:socio_magic_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:socio_magic_web/widgets/subWhiteText.dart';

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
                            const GradientSubHeaderText(
                                text: 'Reach The Right People, The Right Way!'),
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
                                GradientButtonFilled(
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
                      GradientButtonFilled(name: "See Workshops"),
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
                          const GradientButtonFilled(name: "Sell Your Ideas"),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const FooterPart()
          ],
        ),
      ),
    );
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
        gradient: blueGradient,
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
              return blueGradient.createShader(bounds);
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
