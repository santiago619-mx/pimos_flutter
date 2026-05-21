import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class NosotrosView extends StatelessWidget {
  const NosotrosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Nosotros', style: CustomLabels.h1),
      ),
    );
  }
}