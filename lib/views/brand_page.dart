import 'package:flutter/material.dart';
import 'package:socio_magic_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:socio_magic_web/widgets/footer_bar/footer.dart';
import 'package:socio_magic_web/widgets/gradient_filled_button.dart';
import 'package:socio_magic_web/widgets/gradient_sub_header.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff080B15),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const NavBar(),
              SizedBox(height: 150),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: 284,
                              width: 590,
                              child: GradientSubHeaderText(
                                  text:
                                      'Brands can now collabrate with other brand to create a stronger relationship')),
                        ),
                        SizedBox(height: 40),
                        GradientButtonFilled(name: 'Collaborate'),
                      ],
                    ),
                    Image.asset('assets/images/meet.png'),
                  ]),
              SizedBox(height: 150),
              GradientSubHeaderText(text: 'Types of Campaigns'),
            ]),
      ),
    );
  }
}

class CampaignCard extends StatelessWidget {
  const CampaignCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 780,
      width: 492,
      child: Column(
        children: [Container()],
      ),
    );
  }
}
