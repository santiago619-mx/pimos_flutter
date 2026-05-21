import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/pimos-logo.png',
            width: 80,
            height: 80,
          ),
          SizedBox(height: 10),
          Text(
            "Pimo's",
            style: GoogleFonts.montserratAlternates(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}