import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  // Variables para almacenar las selecciones del usuario
  String? _selectedPapas;
  String? _selectedBoneless;
  String? _selectedAlitas;
  String? _selectedExtra;
  String? _selectedBebida;
  String? _selectedSalsa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HERO SECTION ---
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pimos-bg8.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black.withOpacity(0.3), Colors.black],
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  bottom: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Elige lo que te gusta',
                          style: GoogleFonts.montserrat(
                              fontSize: 24, color: Colors.red.shade900, fontWeight: FontWeight.bold)),
                      Text("Elige Pimo's",
                          style: GoogleFonts.montserrat(
                              fontSize: 48, color: Colors.white, fontWeight: FontWeight.w800)),
                    ],
                  ),
                ),
              ],
            ),

            // --- TÍTULO MENÚ ---
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text('Menú',
                  style: GoogleFonts.montserrat(
                      fontSize: 32, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 2)),
            ),

            // --- PRODUCTOS CON RADIO BUTTONS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 20,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                children: [
                  _MenuCard(
                    titulo: 'Pimobby Fries',
                    imagen: 'assets/papas.jpg',
                    opciones: const [
                      'Orden grande: Papas - boneless - queso - 1 aderezo',
                      'Orden pequeña: Papas - boneless - queso - 1 aderezo',
                    ],
                    groupValue: _selectedPapas,
                    onChanged: (value) => setState(() => _selectedPapas = value),
                  ),
                  _MenuCard(
                    titulo: 'Boneless',
                    imagen: 'assets/boneless.jpg',
                    opciones: const ['Orden grande: 15 - 18 pz', 'Orden pequeña: 7 - 9 pz'],
                    groupValue: _selectedBoneless,
                    onChanged: (value) => setState(() => _selectedBoneless = value),
                  ),
                  _MenuCard(
                    titulo: 'Alitas',
                    imagen: 'assets/alitas.jpg',
                    opciones: const ['Orden grande: 15 - 17 pz', 'Orden mediana: 8 - 11 pz', 'Orden pequeña: 5 - 6 pz'],
                    groupValue: _selectedAlitas,
                    onChanged: (value) => setState(() => _selectedAlitas = value),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            // --- EXTRAS, BEBIDAS Y SALSAS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _SeccionTituloMenu(titulo: 'Extras'),
                        _RadioList(
                          items: const ['Salsa Ranch', 'Salsa Picante'],
                          groupValue: _selectedExtra,
                          onChanged: (val) => setState(() => _selectedExtra = val),
                        ),
                        const SizedBox(height: 40),
                        const _SeccionTituloMenu(titulo: 'Bebidas'),
                        _RadioList(
                          items: const ['Malteada', 'Refresco'],
                          groupValue: _selectedBebida,
                          onChanged: (val) => setState(() => _selectedBebida = val),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _SeccionTituloMenu(titulo: 'Salsas'),
                        _RadioList(
                          items: const ['Ajo Parmesano', 'BBQ', 'BBQ Miel', 'Lemon pepper', 'Red Hot', 'Mango Habanero', 'Smoky Hot'],
                          groupValue: _selectedSalsa,
                          onChanged: (val) => setState(() => _selectedSalsa = val),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- BOTÓN REALIZAR PEDIDO ---
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  // Aquí iría la lógica para procesar la orden
                  print("Pedido realizado");
                },
                child: Text('Realizar pedido',
                    style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),

            const _PimosFooter(),
          ],
        ),
      ),
    );
  }
}

// --- COMPONENTES PERSONALIZADOS ---

class _MenuCard extends StatelessWidget {
  final String titulo;
  final String imagen;
  final List<String> opciones;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const _MenuCard({
    required this.titulo,
    required this.imagen,
    required this.opciones,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Text(titulo, style: GoogleFonts.montserrat(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(imagen, height: 180, width: 250, fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          ...opciones.map((opt) => Theme(
            data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.red),
            child: RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: Text(opt, style: const TextStyle(color: Colors.white, fontSize: 11)),
              value: opt,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: Colors.red,
              dense: true,
              visualDensity: VisualDensity.compact,
            ),
          )),
        ],
      ),
    );
  }
}

class _RadioList extends StatelessWidget {
  final List<String> items;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const _RadioList({required this.items, required this.groupValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) => Theme(
        data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.red),
        child: RadioListTile<String>(
          contentPadding: EdgeInsets.zero,
          title: Text(item, style: const TextStyle(color: Colors.white, fontSize: 14)),
          value: item,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: Colors.red,
          dense: true,
        ),
      )).toList(),
    );
  }
}

class _SeccionTituloMenu extends StatelessWidget {
  final String titulo;
  const _SeccionTituloMenu({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: GoogleFonts.montserrat(fontSize: 26, color: Colors.white, fontWeight: FontWeight.w400)),
        const SizedBox(height: 8),
        Container(width: 150, height: 1, color: Colors.red.shade900),
        const SizedBox(height: 10),
      ],
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