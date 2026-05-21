import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class PromocionesView extends StatelessWidget {
  const PromocionesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Promociones', style: CustomLabels.h1),
      ),
    );
  }
}