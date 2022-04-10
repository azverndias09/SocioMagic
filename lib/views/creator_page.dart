import 'package:flutter/material.dart';
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
                          child: Image.asset("assets/images/creatorImage.png"))
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: CustomPaint(
                        painter: MyPainterB(),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 800))),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff1C2235),
                child: Image.asset("assets/images/you_we.png")),
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
                            child: SubWhiteText(
                                text:
                                    "Create alluring posts using the varieties of tools which are provided. You can search for popular hashtags and instagram filters or add one of your own. Add magic to your posts by using SocioMagic's Media Kit!"),
                          )
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
