import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socio_magic_web/widgets/customClippers/custom_clipper_2.dart';
import 'package:socio_magic_web/widgets/footer_bar/footer.dart';
import 'package:socio_magic_web/widgets/gradient_filled_button.dart';
import 'package:socio_magic_web/widgets/gradient_sub_header.dart';
import 'package:socio_magic_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:socio_magic_web/widgets/subWhiteText.dart';

class CreatorsPage extends StatelessWidget {
  const CreatorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff080B15),
        body: SingleChildScrollView(
          child: Column(children: [
            const NavBar(),
            Padding(
                padding: const EdgeInsets.only(left: 150, top: 100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 285,
                              width: 610,
                              child: GradientSubHeaderText(
                                  text:
                                      "Influencers can now collaborate with each other to create alluring content"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: GradientButtonFilled(name: "Collaborate"),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 482,
                            width: 590,
                            child:
                                Image.asset("assets/images/creatorImage.png"))
                      ],
                    ),
                  ],
                )),
            Stack(children: <Widget>[
              Column(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    color: Color(0xff080B15),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: CustomPaint(
                          painter: MyPainterB(),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 800))),
                ],
              ),
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    color: const Color(0xff080B15),
                    height: 1300,
                    width: 1205,
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(
                                image:
                                    AssetImage("assets/images/boy_phone.png")),
                            Column(children: const [
                              GradientSubHeaderText(
                                  text: "Engage, Enjoy & Earn"),
                              SizedBox(
                                  width: 590,
                                  height: 144,
                                  child: SubWhiteText(
                                      text:
                                          "Want to make money using social media.We are the one you might be searching , we will help you to boost your engagement matching you with brands fitting your characteristics."))
                            ]),
                          ]),
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: SizedBox(
                            width: 600,
                            height: 115,
                            child: Image.asset(
                              "assets/images/join_bar.png",
                              scale: 0.1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          height: 448,
                          width: 745,
                          child: SubWhiteText(
                            text:
                                "We are a one stop shop for your next marketing campaign.\n\nYou have to just create content , have fun, and make money promoting the products you already use and love.\n\nWe will also provide you with tools and support you in elevating your content level.\n\nOur platform will serve brands only with genuine and real influencers saving your precious time from all the fake and fraud ones",
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              )
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xff1C2235),
                  child: Image.asset(
                    "assets/images/you_we.png",
                    alignment: Alignment.bottomCenter,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/creatorBottom.png"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          GradientSubHeaderText(text: "Media Kit"),
                          SizedBox(
                            height: 216,
                            width: 488,
                            child: RobotoFont(
                                text:
                                    "Create alluring posts using the varieties of tools which are provided. You can search for popular hashtags and instagram filters or add one of your own. Add magic to your posts by using SocioMagic's Media Kit!"),
                          ),
                          GradientButtonFilled(name: "Join Us"),
                        ],
                      ),
                    )
                  ]),
            ),
            const SizedBox(height: 100),
            const FooterPart(),
          ]),
        ));
  }
}
/* Center(
                  child: Container(
                    color: const Color(0xff080B15),
                    height: 1236,
                    width: 1205,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Image(
                                image:
                                    AssetImage("assets/images/boy_phone.png")),
                            Column(
                              children: const [
                                GradientSubHeaderText(
                                    text: "Engage, Enjoy & Earn"),
                                SizedBox(
                                    width: 590,
                                    height: 144,
                                    child: SubWhiteText(
                                        text:
                                            "Want to make money using social media.We are the one you might be searching , we will help you to boost your engagement matching you with brands fitting your characteristics."))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ) */

class RobotoFont extends StatelessWidget {
  const RobotoFont({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.subtitle1,
        fontSize: 27,
        color: const Color(0xffBFC5D7),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
