import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled3/Login/Login__Page.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';

class Introduction__Page extends StatelessWidget {
  const Introduction__Page({super.key});

  void _onIntroEnd(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const Login__Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Scaffold(
      body: SafeArea(
        right: true,
        top: true,
        left: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Center(
            child: IntroductionScreen(
              autoScrollDuration: 3000,
              allowImplicitScrolling: true,
              globalFooter: SizedBox(
                width: responsive.screenWidth,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => _onIntroEnd(context),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colores.color4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'Iniciar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              pages: [
                PageViewModel(
                    title: 'Bienvenido a !!!',
                    decoration: const PageDecoration(
                        titleTextStyle: TextStyle(fontFamily: 'Poppins')),
                    image: Image.asset('assets/intro1.png'),
                    body: ''),
                PageViewModel(
                  reverse: true,
                  useScrollView: true,
                  title: 'Bienvenido a !!!',
                  image: Image.asset('assets/intro2.png'),
                  body: '',
                ),
                PageViewModel(
                    reverse: true,
                    title: 'Bienvenido a !!!',
                    image: Image.asset('assets/intro3.png'),
                    body: '',
                    footer: Center(
                        child: Text(
                      'Te acompañamos en tu proceso de seleccion \n de software a la medida de tu empresa',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: responsive.responsiveFontSize(11)),
                    ))),
              ],
              onDone: () => _onIntroEnd(context),
              onSkip: () => _onIntroEnd(context),
              showSkipButton: true,
              back: const Icon(Icons.arrow_back_ios),
              skip: const Text(
                'Siguiente',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11),
              ),
              next: const Icon(Icons.arrow_forward_ios_rounded),
              done: const Text(
                'Terminar',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11),
              ),
              curve: Curves.fastLinearToSlowEaseIn,
              controlsMargin: const EdgeInsets.all(16),
              controlsPadding: kIsWeb
                  ? const EdgeInsets.all(12.0)
                  : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
              dotsContainerDecorator: const ShapeDecoration(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              dotsDecorator: const DotsDecorator(
                size: Size(10.0, 10.0),
                color: Color(0xFFF4E7FB),
                activeSize: Size(22.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
