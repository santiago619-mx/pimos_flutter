import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60), // <- agrega esta línea
        Image.asset(
          'assets/pimos-logo.png',
          width: 80,
          height: 80,
        ),
        SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.contain,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Happening ',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: 'Now',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}