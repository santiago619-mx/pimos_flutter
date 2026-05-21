import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class GaleriaView extends StatelessWidget {
  const GaleriaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Galería', style: CustomLabels.h1),
      ),
    );
  }
}