import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image(
              image: AssetImage('assets/pimos-logo.png'),
              width: 300,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/pimos-bg1.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
}