import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromocionesView extends StatefulWidget {
  const PromocionesView({super.key});

  @override
  State<PromocionesView> createState() => _PromocionesViewState();
}

class _PromocionesViewState extends State<PromocionesView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pimos-bg8.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black.withOpacity(0.5), Colors.black],
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PROMOCIONES',
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 4,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(width: 80, height: 4, color: Colors.red),
                        const SizedBox(height: 15),
                        Text(
                          '¡Solo por tiempo limitado!',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.red.shade300,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // --- LISTA DE PROMOCIONES ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Wrap(
                spacing: 30,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                children: const [
                  _PromoCard(
                    imagen: 'assets/promo_boneless.jpg',
                    titulo: 'Combo Boneless x2',
                    descripcion: '2 órdenes de boneless + papas por solo \$199.',
                  ),
                  _PromoCard(
                    imagen: 'assets/promo_alitas_1kg.jpg',
                    titulo: 'Kilo de Alitas',
                    descripcion: 'Llévate 1kg de nuestras mejores alitas por \$200.',
                  ),
                  _PromoCard(
                    imagen: 'assets/promo_alitas_domingo.jpg',
                    titulo: 'Domingo de Alitas',
                    descripcion: 'Todos los domingos 1/2 kilo por solo \$134.',
                  ),
                ],
              ),
            ),

            // --- SECCIÓN DE ACCIÓN ---
            Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  const Icon(Icons.delivery_dining, color: Colors.red, size: 50),
                  const SizedBox(height: 15),
                  Text(
                    'SERVICIO SOLO A DOMICILIO',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Llámanos o escribe al: 786 234 0642',
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 10,
                    ),
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                    child: Text(
                      'ORDENAR AHORA',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const _PimosFooter(),
          ],
        ),
      ),
    );
  }
}

// Los widgets de soporte se mantienen igual ya que son componentes visuales
class _PromoCard extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String descripcion;

  const _PromoCard({
    required this.imagen,
    required this.titulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: const Color(0xff111111),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.1),
            blurRadius: 15,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imagen,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  descripcion,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PimosFooter extends StatelessWidget {
  const _PimosFooter();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: const Color(0xff0d0d0d),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook, color: Colors.red, size: 28),
              SizedBox(width: 20),
              Icon(Icons.camera_alt, color: Colors.red, size: 28),
              SizedBox(width: 20),
              Icon(Icons.chat_bubble_outline, color: Colors.red, size: 28),
            ],
          ),
          const SizedBox(height: 20),
          const Text("Derechos Reservados Pimo's 2026", style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}