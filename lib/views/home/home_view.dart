import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socio_magic_web/widgets/navigation_bar/navigation_bar.dart';

final LinearGradient _gradient = LinearGradient(colors: <Color>[
  Color(0xff00A3FF),
  Color(0xff31E3CB),
]);

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff080B15),
      body: Column(
        children: <Widget>[
          const NavBar(),
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 390,
                width: 560,
                child: Column(
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return _gradient.createShader(bounds);
                      },
                      child: Text("Reach The Right People, The Right Way!",
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyText2,
                            fontSize: 47,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Get excellent content from talented people and create powerful associations with influencers. Establish your brand amongst your target audience and skyrocket your brand value",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 24,
                        color: const Color(0xffBFC5D7),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        _Gradientbuttonfilled(),
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
    );
  }
}

class _Gradientbuttonfilled extends StatelessWidget {
  const _Gradientbuttonfilled({
    Key? key,
  }) : super(key: key);

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

              minimumSize: Size(183, 50),
              //make color or elevated button transparent
            ),
            onPressed: () {},
            child: Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.button,
                    fontSize: 18,
                    color: const Color(0xff080b15),
                  ),
                ))));
  }
}

class _Gradientbuttontrans extends StatelessWidget {
  const _Gradientbuttontrans({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onSurface: Colors.transparent,
          shadowColor: Colors.transparent,

          minimumSize: const Size(183, 47),
          //make color or elevated button transparent
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return _gradient.createShader(bounds);
            },
            child: Text(
              'Login',
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
