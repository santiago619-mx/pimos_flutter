import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    // Usamos LayoutBuilder para que se adapte al espacio del panel central
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              // --- Hero Section ---
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pimos-bg8.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  Positioned(
                    left: 40,
                    top: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sabor que domina',
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 22,
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Tus sentidos',
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Boneless, hamburguesas, alitas, papas fritas y más',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Ordena ya',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // --- Promociones Section ---
              Container(
                color: const Color(0xff1a1a1a),
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "Pimo's Promos",
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      alignment: WrapAlignment.center,
                      children: const [
                        _PromoCard(
                          image: 'assets/pimos-bg4.jpg',
                          title: 'Pimobby Fries',
                        ),
                        _PromoCard(
                          image: 'assets/pimos-bg2.jpeg',
                          title: 'Spicy Boneless',
                        ),
                        _PromoCard(
                          image: 'assets/pimos-bg3.jpeg',
                          title: 'Combo Best Friends',
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // --- Info Section ---
              Container(
                color: const Color(0xff111111),
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/pimos-bg1.jpeg',
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    const Expanded(
                      child: Text(
                        'En Pimo\'s nos enfocamos en brindarte la mejor calidad en cada bocado. Nuestra pasión por la cocina urbana se refleja en la frescura de nuestros ingredientes y el sazón único que nos caracteriza.',
                        style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.8),
                      ),
                    ),
                  ],
                ),
              ),

              // --- Personaliza tu pedido ---
              Container(
                width: double.infinity,
                color: const Color(0xff1a1a1a),
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white54),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Personaliza tu pedido',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),

              // --- Footer ---
              const _DashboardFooter(),
            ],
          ),
        );
      },
    );
  }
}

class _DashboardFooter extends StatelessWidget {
  const _DashboardFooter();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff0d0d0d),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 15,
        runSpacing: 10,
        children: const [
          Icon(Icons.facebook_outlined, color: Colors.red, size: 30),
          Icon(Icons.camera_alt_outlined, color: Colors.red, size: 30),
          Icon(Icons.chat_outlined, color: Colors.red, size: 30),
          SizedBox(width: 10),
          Icon(Icons.location_on_outlined, color: Colors.red, size: 20),
          Text('Dirección', style: TextStyle(color: Colors.white70, fontSize: 14)),
          SizedBox(width: 10),
          Text("Derechos Reservados Pimo's 2026", style: TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
    );
  }
}

class _PromoCard extends StatelessWidget {
  final String image;
  final String title;

  const _PromoCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            width: 180,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}