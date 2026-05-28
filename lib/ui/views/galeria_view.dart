import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GaleriaView extends StatelessWidget {
  const GaleriaView({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de imágenes locales (asegúrate de que existan en tus assets)
    final List<String> pimosImages = [
      'assets/pimos-bg1.jpeg',
      'assets/pimos-bg2.jpeg',
      'assets/pimos-bg3.jpeg',
      'assets/pimos-bg4.jpg',
      'assets/hamburguesas.jpeg',
      'assets/bonless.jpeg',
      'assets/alitas.jpeg',
      'assets/papas.jpg',
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          // --- HEADER DE GALERÍA ---
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pimos-bg8.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.4), Colors.black],
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'NUESTRA GALERÍA',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(width: 60, height: 3, color: Colors.red),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // --- GRILLA DE IMÁGENES ---
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 columnas para PC/Dashboard
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.0, // Imágenes cuadradas
              ),
              itemCount: pimosImages.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.red.withOpacity(0.3), width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      pimosImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 40),

          // --- FOOTER PIMO'S ---
          const _PimosFooter(),
        ],
      ),
    );
  }
}

// Widget de Footer reutilizado para coherencia visual
class _PimosFooter extends StatelessWidget {
  const _PimosFooter();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff0d0d0d),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.facebook_outlined, color: Colors.red, size: 28),
              SizedBox(width: 20),
              Icon(Icons.camera_alt_outlined, color: Colors.red, size: 28),
              SizedBox(width: 20),
              Icon(Icons.chat_outlined, color: Colors.red, size: 28),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_on_outlined, color: Colors.red, size: 18),
              SizedBox(width: 8),
              Text('Dirección', style: TextStyle(color: Colors.white70, fontSize: 13)),
              SizedBox(width: 20),
              Text("Derechos Reservados Pimo's 2026",
                  style: TextStyle(color: Colors.white70, fontSize: 13)),
            ],
          ),
        ],
      ),
    );
  }
}